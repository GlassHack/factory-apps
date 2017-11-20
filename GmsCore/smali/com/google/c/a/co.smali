.class abstract enum Lcom/google/c/a/co;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/c/a/ck;


# static fields
.field public static final enum a:Lcom/google/c/a/co;

.field private static enum b:Lcom/google/c/a/co;

.field private static enum c:Lcom/google/c/a/co;

.field private static enum d:Lcom/google/c/a/co;

.field private static final synthetic e:[Lcom/google/c/a/co;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/c/a/cp;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1}, Lcom/google/c/a/cp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/a/co;->b:Lcom/google/c/a/co;

    new-instance v0, Lcom/google/c/a/cq;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1}, Lcom/google/c/a/cq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/a/co;->c:Lcom/google/c/a/co;

    new-instance v0, Lcom/google/c/a/cr;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1}, Lcom/google/c/a/cr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/a/co;->a:Lcom/google/c/a/co;

    new-instance v0, Lcom/google/c/a/cs;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1}, Lcom/google/c/a/cs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/a/co;->d:Lcom/google/c/a/co;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/c/a/co;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/a/co;->b:Lcom/google/c/a/co;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/c/a/co;->c:Lcom/google/c/a/co;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/c/a/co;->a:Lcom/google/c/a/co;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/c/a/co;->d:Lcom/google/c/a/co;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/a/co;->e:[Lcom/google/c/a/co;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/c/a/co;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/a/co;
    .locals 1

    const-class v0, Lcom/google/c/a/co;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/co;

    return-object v0
.end method

.method public static values()[Lcom/google/c/a/co;
    .locals 1

    sget-object v0, Lcom/google/c/a/co;->e:[Lcom/google/c/a/co;

    invoke-virtual {v0}, [Lcom/google/c/a/co;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/a/co;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/c/a/ck;
    .locals 0

    return-object p0
.end method

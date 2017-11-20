.class abstract enum Lcom/google/c/b/du;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/c/b/du;

.field public static final enum b:Lcom/google/c/b/du;

.field private static enum c:Lcom/google/c/b/du;

.field private static final synthetic d:[Lcom/google/c/b/du;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/c/b/dv;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/google/c/b/dv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/du;->a:Lcom/google/c/b/du;

    new-instance v0, Lcom/google/c/b/dw;

    const-string v1, "SOFT"

    invoke-direct {v0, v1}, Lcom/google/c/b/dw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/du;->c:Lcom/google/c/b/du;

    new-instance v0, Lcom/google/c/b/dx;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/google/c/b/dx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/du;->b:Lcom/google/c/b/du;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/c/b/du;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/b/du;->a:Lcom/google/c/b/du;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/c/b/du;->c:Lcom/google/c/b/du;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/c/b/du;->b:Lcom/google/c/b/du;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/b/du;->d:[Lcom/google/c/b/du;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/c/b/du;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/du;
    .locals 1

    const-class v0, Lcom/google/c/b/du;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/du;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/du;
    .locals 1

    sget-object v0, Lcom/google/c/b/du;->d:[Lcom/google/c/b/du;

    invoke-virtual {v0}, [Lcom/google/c/b/du;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/du;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/c/a/bw;
.end method

.method abstract a(Lcom/google/c/b/dr;Lcom/google/c/b/dq;Ljava/lang/Object;)Lcom/google/c/b/ee;
.end method

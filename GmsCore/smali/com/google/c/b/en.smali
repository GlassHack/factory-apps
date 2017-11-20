.class public abstract enum Lcom/google/c/b/en;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/c/b/en;

.field public static final enum b:Lcom/google/c/b/en;

.field public static final enum c:Lcom/google/c/b/en;

.field public static final enum d:Lcom/google/c/b/en;

.field public static final enum e:Lcom/google/c/b/en;

.field private static final synthetic f:[Lcom/google/c/b/en;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/c/b/eo;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1}, Lcom/google/c/b/eo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/en;->a:Lcom/google/c/b/en;

    new-instance v0, Lcom/google/c/b/ep;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1}, Lcom/google/c/b/ep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/en;->b:Lcom/google/c/b/en;

    new-instance v0, Lcom/google/c/b/eq;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1}, Lcom/google/c/b/eq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    new-instance v0, Lcom/google/c/b/er;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1}, Lcom/google/c/b/er;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/en;->d:Lcom/google/c/b/en;

    new-instance v0, Lcom/google/c/b/es;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/google/c/b/es;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/en;->e:Lcom/google/c/b/en;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/c/b/en;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/b/en;->a:Lcom/google/c/b/en;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/c/b/en;->b:Lcom/google/c/b/en;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/c/b/en;->d:Lcom/google/c/b/en;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/c/b/en;->e:Lcom/google/c/b/en;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/b/en;->f:[Lcom/google/c/b/en;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/c/b/en;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/en;
    .locals 1

    const-class v0, Lcom/google/c/b/en;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/en;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/en;
    .locals 1

    sget-object v0, Lcom/google/c/b/en;->f:[Lcom/google/c/b/en;

    invoke-virtual {v0}, [Lcom/google/c/b/en;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/en;

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method

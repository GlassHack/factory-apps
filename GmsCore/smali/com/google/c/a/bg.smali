.class final enum Lcom/google/c/a/bg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/c/a/bg;

.field public static final enum b:Lcom/google/c/a/bg;

.field public static final enum c:Lcom/google/c/a/bg;

.field public static final enum d:Lcom/google/c/a/bg;

.field private static final synthetic e:[Lcom/google/c/a/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/c/a/bg;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/google/c/a/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/bg;->a:Lcom/google/c/a/bg;

    new-instance v0, Lcom/google/c/a/bg;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/google/c/a/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/bg;->b:Lcom/google/c/a/bg;

    new-instance v0, Lcom/google/c/a/bg;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/c/a/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/bg;->c:Lcom/google/c/a/bg;

    new-instance v0, Lcom/google/c/a/bg;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/c/a/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/a/bg;->d:Lcom/google/c/a/bg;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/c/a/bg;

    sget-object v1, Lcom/google/c/a/bg;->a:Lcom/google/c/a/bg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/a/bg;->b:Lcom/google/c/a/bg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/c/a/bg;->c:Lcom/google/c/a/bg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/c/a/bg;->d:Lcom/google/c/a/bg;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/c/a/bg;->e:[Lcom/google/c/a/bg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/a/bg;
    .locals 1

    const-class v0, Lcom/google/c/a/bg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/bg;

    return-object v0
.end method

.method public static values()[Lcom/google/c/a/bg;
    .locals 1

    sget-object v0, Lcom/google/c/a/bg;->e:[Lcom/google/c/a/bg;

    invoke-virtual {v0}, [Lcom/google/c/a/bg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/a/bg;

    return-object v0
.end method

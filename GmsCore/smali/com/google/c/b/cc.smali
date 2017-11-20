.class final enum Lcom/google/c/b/cc;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/c/b/et;


# static fields
.field public static final enum a:Lcom/google/c/b/cc;

.field private static final synthetic b:[Lcom/google/c/b/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/c/b/cc;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/c/b/cc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/cc;->a:Lcom/google/c/b/cc;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/c/b/cc;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/b/cc;->a:Lcom/google/c/b/cc;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/b/cc;->b:[Lcom/google/c/b/cc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/cc;
    .locals 1

    const-class v0, Lcom/google/c/b/cc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/cc;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/cc;
    .locals 1

    sget-object v0, Lcom/google/c/b/cc;->b:[Lcom/google/c/b/cc;

    invoke-virtual {v0}, [Lcom/google/c/b/cc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/cc;

    return-object v0
.end method

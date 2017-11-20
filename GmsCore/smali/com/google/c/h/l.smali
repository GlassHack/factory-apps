.class abstract enum Lcom/google/c/h/l;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/c/a/ck;


# static fields
.field public static final enum a:Lcom/google/c/h/l;

.field private static enum b:Lcom/google/c/h/l;

.field private static final synthetic c:[Lcom/google/c/h/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/c/h/m;

    const-string v1, "IGNORE_TYPE_VARIABLE_OR_WILDCARD"

    invoke-direct {v0, v1}, Lcom/google/c/h/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/h/l;->a:Lcom/google/c/h/l;

    new-instance v0, Lcom/google/c/h/n;

    const-string v1, "INTERFACE_ONLY"

    invoke-direct {v0, v1}, Lcom/google/c/h/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/h/l;->b:Lcom/google/c/h/l;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/c/h/l;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/h/l;->a:Lcom/google/c/h/l;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/c/h/l;->b:Lcom/google/c/h/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/h/l;->c:[Lcom/google/c/h/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/c/h/l;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/h/l;
    .locals 1

    const-class v0, Lcom/google/c/h/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/h/l;

    return-object v0
.end method

.method public static values()[Lcom/google/c/h/l;
    .locals 1

    sget-object v0, Lcom/google/c/h/l;->c:[Lcom/google/c/h/l;

    invoke-virtual {v0}, [Lcom/google/c/h/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/h/l;

    return-object v0
.end method

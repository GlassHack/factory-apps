.class abstract enum Lcom/google/c/b/aq;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/c/b/aq;

.field public static final enum b:Lcom/google/c/b/aq;

.field public static final enum c:Lcom/google/c/b/aq;

.field private static final synthetic d:[Lcom/google/c/b/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 373
    new-instance v0, Lcom/google/c/b/ar;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/google/c/b/ar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/aq;->a:Lcom/google/c/b/aq;

    .line 388
    new-instance v0, Lcom/google/c/b/as;

    const-string v1, "SOFT"

    invoke-direct {v0, v1}, Lcom/google/c/b/as;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/aq;->b:Lcom/google/c/b/aq;

    .line 404
    new-instance v0, Lcom/google/c/b/at;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/google/c/b/at;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/aq;->c:Lcom/google/c/b/aq;

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/c/b/aq;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/b/aq;->a:Lcom/google/c/b/aq;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/c/b/aq;->b:Lcom/google/c/b/aq;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/c/b/aq;->c:Lcom/google/c/b/aq;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/b/aq;->d:[Lcom/google/c/b/aq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/google/c/b/aq;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/aq;
    .locals 1

    .prologue
    .line 367
    const-class v0, Lcom/google/c/b/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/aq;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/aq;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/google/c/b/aq;->d:[Lcom/google/c/b/aq;

    invoke-virtual {v0}, [Lcom/google/c/b/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/aq;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/c/a/u;
.end method

.method abstract a(Lcom/google/c/b/an;Lcom/google/c/b/am;Ljava/lang/Object;I)Lcom/google/c/b/ba;
.end method

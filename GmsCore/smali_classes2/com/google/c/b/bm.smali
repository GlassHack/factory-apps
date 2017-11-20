.class public abstract enum Lcom/google/c/b/bm;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/c/b/bm;

.field public static final enum b:Lcom/google/c/b/bm;

.field public static final enum c:Lcom/google/c/b/bm;

.field public static final enum d:Lcom/google/c/b/bm;

.field public static final enum e:Lcom/google/c/b/bm;

.field private static final synthetic f:[Lcom/google/c/b/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/c/b/bn;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1}, Lcom/google/c/b/bn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/bm;->a:Lcom/google/c/b/bm;

    .line 51
    new-instance v0, Lcom/google/c/b/bo;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1}, Lcom/google/c/b/bo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/bm;->b:Lcom/google/c/b/bm;

    .line 63
    new-instance v0, Lcom/google/c/b/bp;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1}, Lcom/google/c/b/bp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/bm;->c:Lcom/google/c/b/bm;

    .line 74
    new-instance v0, Lcom/google/c/b/bq;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1}, Lcom/google/c/b/bq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/bm;->d:Lcom/google/c/b/bm;

    .line 85
    new-instance v0, Lcom/google/c/b/br;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/google/c/b/br;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/bm;->e:Lcom/google/c/b/bm;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/c/b/bm;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/b/bm;->a:Lcom/google/c/b/bm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/c/b/bm;->b:Lcom/google/c/b/bm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/c/b/bm;->c:Lcom/google/c/b/bm;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/c/b/bm;->d:Lcom/google/c/b/bm;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/c/b/bm;->e:Lcom/google/c/b/bm;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/b/bm;->f:[Lcom/google/c/b/bm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/c/b/bm;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/bm;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/c/b/bm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/bm;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/bm;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/c/b/bm;->f:[Lcom/google/c/b/bm;

    invoke-virtual {v0}, [Lcom/google/c/b/bm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/bm;

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method

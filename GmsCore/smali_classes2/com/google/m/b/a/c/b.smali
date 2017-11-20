.class public final enum Lcom/google/m/b/a/c/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/m/b/a/c/b;

.field public static final enum b:Lcom/google/m/b/a/c/b;

.field public static final enum c:Lcom/google/m/b/a/c/b;

.field public static final enum d:Lcom/google/m/b/a/c/b;

.field private static final synthetic e:[Lcom/google/m/b/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/google/m/b/a/c/b;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/m/b/a/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/m/b/a/c/b;->a:Lcom/google/m/b/a/c/b;

    .line 58
    new-instance v0, Lcom/google/m/b/a/c/b;

    const-string v1, "HANDSHAKE_INITIATED"

    invoke-direct {v0, v1, v3}, Lcom/google/m/b/a/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/m/b/a/c/b;->b:Lcom/google/m/b/a/c/b;

    .line 59
    new-instance v0, Lcom/google/m/b/a/c/b;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/google/m/b/a/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/m/b/a/c/b;->c:Lcom/google/m/b/a/c/b;

    .line 60
    new-instance v0, Lcom/google/m/b/a/c/b;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/m/b/a/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/m/b/a/c/b;->d:Lcom/google/m/b/a/c/b;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/m/b/a/c/b;

    sget-object v1, Lcom/google/m/b/a/c/b;->a:Lcom/google/m/b/a/c/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/m/b/a/c/b;->b:Lcom/google/m/b/a/c/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/m/b/a/c/b;->c:Lcom/google/m/b/a/c/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/m/b/a/c/b;->d:Lcom/google/m/b/a/c/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/m/b/a/c/b;->e:[Lcom/google/m/b/a/c/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/m/b/a/c/b;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/m/b/a/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/c/b;

    return-object v0
.end method

.method public static values()[Lcom/google/m/b/a/c/b;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/m/b/a/c/b;->e:[Lcom/google/m/b/a/c/b;

    invoke-virtual {v0}, [Lcom/google/m/b/a/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/m/b/a/c/b;

    return-object v0
.end method

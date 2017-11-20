.class public final enum Lcom/google/h/a/b/b/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/h/a/b/b/u;

.field public static final enum b:Lcom/google/h/a/b/b/u;

.field public static final enum c:Lcom/google/h/a/b/b/u;

.field public static final enum d:Lcom/google/h/a/b/b/u;

.field public static final enum e:Lcom/google/h/a/b/b/u;

.field private static final synthetic f:[Lcom/google/h/a/b/b/u;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/google/h/a/b/b/u;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/h/a/b/b/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/b/u;->a:Lcom/google/h/a/b/b/u;

    .line 47
    new-instance v0, Lcom/google/h/a/b/b/u;

    const-string v1, "STILL"

    invoke-direct {v0, v1, v3}, Lcom/google/h/a/b/b/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/b/u;->b:Lcom/google/h/a/b/b/u;

    .line 48
    new-instance v0, Lcom/google/h/a/b/b/u;

    const-string v1, "ON_FOOT"

    invoke-direct {v0, v1, v4}, Lcom/google/h/a/b/b/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/b/u;->c:Lcom/google/h/a/b/b/u;

    .line 49
    new-instance v0, Lcom/google/h/a/b/b/u;

    const-string v1, "ON_BICYCLE"

    invoke-direct {v0, v1, v5}, Lcom/google/h/a/b/b/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/b/u;->d:Lcom/google/h/a/b/b/u;

    .line 50
    new-instance v0, Lcom/google/h/a/b/b/u;

    const-string v1, "IN_VEHICLE"

    invoke-direct {v0, v1, v6}, Lcom/google/h/a/b/b/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/b/u;->e:Lcom/google/h/a/b/b/u;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/h/a/b/b/u;

    sget-object v1, Lcom/google/h/a/b/b/u;->a:Lcom/google/h/a/b/b/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/h/a/b/b/u;->b:Lcom/google/h/a/b/b/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/h/a/b/b/u;->c:Lcom/google/h/a/b/b/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/h/a/b/b/u;->d:Lcom/google/h/a/b/b/u;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/h/a/b/b/u;->e:Lcom/google/h/a/b/b/u;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/h/a/b/b/u;->f:[Lcom/google/h/a/b/b/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/h/a/b/b/u;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/h/a/b/b/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/u;

    return-object v0
.end method

.method public static values()[Lcom/google/h/a/b/b/u;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/h/a/b/b/u;->f:[Lcom/google/h/a/b/b/u;

    invoke-virtual {v0}, [Lcom/google/h/a/b/b/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/h/a/b/b/u;

    return-object v0
.end method

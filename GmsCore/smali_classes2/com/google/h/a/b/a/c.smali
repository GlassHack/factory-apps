.class public final enum Lcom/google/h/a/b/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/h/a/b/a/c;

.field public static final enum b:Lcom/google/h/a/b/a/c;

.field public static final enum c:Lcom/google/h/a/b/a/c;

.field public static final enum d:Lcom/google/h/a/b/a/c;

.field public static final enum e:Lcom/google/h/a/b/a/c;

.field private static final synthetic f:[Lcom/google/h/a/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/google/h/a/b/a/c;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v2}, Lcom/google/h/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/a/c;->a:Lcom/google/h/a/b/a/c;

    .line 21
    new-instance v0, Lcom/google/h/a/b/a/c;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3}, Lcom/google/h/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/a/c;->b:Lcom/google/h/a/b/a/c;

    .line 22
    new-instance v0, Lcom/google/h/a/b/a/c;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4}, Lcom/google/h/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/a/c;->c:Lcom/google/h/a/b/a/c;

    .line 23
    new-instance v0, Lcom/google/h/a/b/a/c;

    const-string v1, "GPS_INJECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/h/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/a/c;->d:Lcom/google/h/a/b/a/c;

    .line 24
    new-instance v0, Lcom/google/h/a/b/a/c;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/google/h/a/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/h/a/b/a/c;->e:Lcom/google/h/a/b/a/c;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/h/a/b/a/c;

    sget-object v1, Lcom/google/h/a/b/a/c;->a:Lcom/google/h/a/b/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/h/a/b/a/c;->b:Lcom/google/h/a/b/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/h/a/b/a/c;->c:Lcom/google/h/a/b/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/h/a/b/a/c;->d:Lcom/google/h/a/b/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/h/a/b/a/c;->e:Lcom/google/h/a/b/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/h/a/b/a/c;->f:[Lcom/google/h/a/b/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/h/a/b/a/c;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/h/a/b/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/a/c;

    return-object v0
.end method

.method public static values()[Lcom/google/h/a/b/a/c;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/h/a/b/a/c;->f:[Lcom/google/h/a/b/a/c;

    invoke-virtual {v0}, [Lcom/google/h/a/b/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/h/a/b/a/c;

    return-object v0
.end method

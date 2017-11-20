.class public final enum Lcom/android/d/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/android/d/r;

.field public static final enum b:Lcom/android/d/r;

.field public static final enum c:Lcom/android/d/r;

.field public static final enum d:Lcom/android/d/r;

.field private static final synthetic e:[Lcom/android/d/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 480
    new-instance v0, Lcom/android/d/r;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/android/d/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/d/r;->a:Lcom/android/d/r;

    .line 481
    new-instance v0, Lcom/android/d/r;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/d/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/d/r;->b:Lcom/android/d/r;

    .line 482
    new-instance v0, Lcom/android/d/r;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/android/d/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/d/r;->c:Lcom/android/d/r;

    .line 483
    new-instance v0, Lcom/android/d/r;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/android/d/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/d/r;->d:Lcom/android/d/r;

    .line 479
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/d/r;

    sget-object v1, Lcom/android/d/r;->a:Lcom/android/d/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/d/r;->b:Lcom/android/d/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/d/r;->c:Lcom/android/d/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/d/r;->d:Lcom/android/d/r;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/d/r;->e:[Lcom/android/d/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/d/r;
    .locals 1

    .prologue
    .line 479
    const-class v0, Lcom/android/d/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/d/r;

    return-object v0
.end method

.method public static values()[Lcom/android/d/r;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/android/d/r;->e:[Lcom/android/d/r;

    invoke-virtual {v0}, [Lcom/android/d/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/d/r;

    return-object v0
.end method

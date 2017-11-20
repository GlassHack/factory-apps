.class final enum Lcom/google/android/gms/analytics/internal/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/analytics/internal/f;

.field public static final enum b:Lcom/google/android/gms/analytics/internal/f;

.field public static final enum c:Lcom/google/android/gms/analytics/internal/f;

.field private static final synthetic d:[Lcom/google/android/gms/analytics/internal/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 674
    new-instance v0, Lcom/google/android/gms/analytics/internal/f;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/f;->a:Lcom/google/android/gms/analytics/internal/f;

    new-instance v0, Lcom/google/android/gms/analytics/internal/f;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/internal/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/f;->b:Lcom/google/android/gms/analytics/internal/f;

    new-instance v0, Lcom/google/android/gms/analytics/internal/f;

    const-string v1, "DEFLATE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/internal/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/f;->c:Lcom/google/android/gms/analytics/internal/f;

    .line 673
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/analytics/internal/f;

    sget-object v1, Lcom/google/android/gms/analytics/internal/f;->a:Lcom/google/android/gms/analytics/internal/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/analytics/internal/f;->b:Lcom/google/android/gms/analytics/internal/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/analytics/internal/f;->c:Lcom/google/android/gms/analytics/internal/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/analytics/internal/f;->d:[Lcom/google/android/gms/analytics/internal/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 673
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/f;
    .locals 1

    .prologue
    .line 677
    const-string v0, "GZIP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    sget-object v0, Lcom/google/android/gms/analytics/internal/f;->b:Lcom/google/android/gms/analytics/internal/f;

    .line 683
    :goto_0
    return-object v0

    .line 680
    :cond_0
    const-string v0, "DEFLATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    sget-object v0, Lcom/google/android/gms/analytics/internal/f;->c:Lcom/google/android/gms/analytics/internal/f;

    goto :goto_0

    .line 683
    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/internal/f;->a:Lcom/google/android/gms/analytics/internal/f;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/f;
    .locals 1

    .prologue
    .line 673
    const-class v0, Lcom/google/android/gms/analytics/internal/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/f;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/analytics/internal/f;
    .locals 1

    .prologue
    .line 673
    sget-object v0, Lcom/google/android/gms/analytics/internal/f;->d:[Lcom/google/android/gms/analytics/internal/f;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/internal/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/internal/f;

    return-object v0
.end method

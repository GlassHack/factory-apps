.class final enum Lcom/google/android/gms/analytics/internal/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/analytics/internal/e;

.field public static final enum b:Lcom/google/android/gms/analytics/internal/e;

.field public static final enum c:Lcom/google/android/gms/analytics/internal/e;

.field public static final enum d:Lcom/google/android/gms/analytics/internal/e;

.field public static final enum e:Lcom/google/android/gms/analytics/internal/e;

.field public static final enum f:Lcom/google/android/gms/analytics/internal/e;

.field private static final synthetic g:[Lcom/google/android/gms/analytics/internal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 651
    new-instance v0, Lcom/google/android/gms/analytics/internal/e;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/internal/e;

    new-instance v0, Lcom/google/android/gms/analytics/internal/e;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->b:Lcom/google/android/gms/analytics/internal/e;

    new-instance v0, Lcom/google/android/gms/analytics/internal/e;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/analytics/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->c:Lcom/google/android/gms/analytics/internal/e;

    new-instance v0, Lcom/google/android/gms/analytics/internal/e;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/analytics/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->d:Lcom/google/android/gms/analytics/internal/e;

    new-instance v0, Lcom/google/android/gms/analytics/internal/e;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/analytics/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->e:Lcom/google/android/gms/analytics/internal/e;

    new-instance v0, Lcom/google/android/gms/analytics/internal/e;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->f:Lcom/google/android/gms/analytics/internal/e;

    .line 650
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/analytics/internal/e;

    sget-object v1, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/internal/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/analytics/internal/e;->b:Lcom/google/android/gms/analytics/internal/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/analytics/internal/e;->c:Lcom/google/android/gms/analytics/internal/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/analytics/internal/e;->d:Lcom/google/android/gms/analytics/internal/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/analytics/internal/e;->e:Lcom/google/android/gms/analytics/internal/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/analytics/internal/e;->f:Lcom/google/android/gms/analytics/internal/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/analytics/internal/e;->g:[Lcom/google/android/gms/analytics/internal/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/e;
    .locals 1

    .prologue
    .line 654
    const-string v0, "BATCH_BY_SESSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->b:Lcom/google/android/gms/analytics/internal/e;

    .line 669
    :goto_0
    return-object v0

    .line 657
    :cond_0
    const-string v0, "BATCH_BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->c:Lcom/google/android/gms/analytics/internal/e;

    goto :goto_0

    .line 660
    :cond_1
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->d:Lcom/google/android/gms/analytics/internal/e;

    goto :goto_0

    .line 663
    :cond_2
    const-string v0, "BATCH_BY_COUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->e:Lcom/google/android/gms/analytics/internal/e;

    goto :goto_0

    .line 666
    :cond_3
    const-string v0, "BATCH_BY_SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->f:Lcom/google/android/gms/analytics/internal/e;

    goto :goto_0

    .line 669
    :cond_4
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->a:Lcom/google/android/gms/analytics/internal/e;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/e;
    .locals 1

    .prologue
    .line 650
    const-class v0, Lcom/google/android/gms/analytics/internal/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/e;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/analytics/internal/e;
    .locals 1

    .prologue
    .line 650
    sget-object v0, Lcom/google/android/gms/analytics/internal/e;->g:[Lcom/google/android/gms/analytics/internal/e;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/internal/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/internal/e;

    return-object v0
.end method

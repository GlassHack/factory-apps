.class public final enum Lcom/google/android/location/ai;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/ai;

.field public static final enum b:Lcom/google/android/location/ai;

.field public static final enum c:Lcom/google/android/location/ai;

.field public static final enum d:Lcom/google/android/location/ai;

.field public static final enum e:Lcom/google/android/location/ai;

.field public static final enum f:Lcom/google/android/location/ai;

.field private static final synthetic g:[Lcom/google/android/location/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    new-instance v0, Lcom/google/android/location/ai;

    const-string v1, "INDOOR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    .line 532
    new-instance v0, Lcom/google/android/location/ai;

    const-string v1, "INDOOR_LOW_CONFIDENCE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ai;->b:Lcom/google/android/location/ai;

    .line 537
    new-instance v0, Lcom/google/android/location/ai;

    const-string v1, "OUTDOOR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    .line 542
    new-instance v0, Lcom/google/android/location/ai;

    const-string v1, "OUTDOOR_LOW_CONFIDENCE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ai;->d:Lcom/google/android/location/ai;

    .line 547
    new-instance v0, Lcom/google/android/location/ai;

    const-string v1, "MIX"

    invoke-direct {v0, v1, v7}, Lcom/google/android/location/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ai;->e:Lcom/google/android/location/ai;

    .line 552
    new-instance v0, Lcom/google/android/location/ai;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/ai;->f:Lcom/google/android/location/ai;

    .line 523
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/location/ai;

    sget-object v1, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/ai;->b:Lcom/google/android/location/ai;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/ai;->d:Lcom/google/android/location/ai;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/ai;->e:Lcom/google/android/location/ai;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/ai;->f:Lcom/google/android/location/ai;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/ai;->g:[Lcom/google/android/location/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/ai;
    .locals 1

    .prologue
    .line 523
    const-class v0, Lcom/google/android/location/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/ai;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/ai;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lcom/google/android/location/ai;->g:[Lcom/google/android/location/ai;

    invoke-virtual {v0}, [Lcom/google/android/location/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/ai;

    return-object v0
.end method

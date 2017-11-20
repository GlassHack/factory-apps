.class final enum Lcom/google/android/location/activity/bg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/activity/bg;

.field public static final enum b:Lcom/google/android/location/activity/bg;

.field public static final enum c:Lcom/google/android/location/activity/bg;

.field public static final enum d:Lcom/google/android/location/activity/bg;

.field public static final enum e:Lcom/google/android/location/activity/bg;

.field public static final enum f:Lcom/google/android/location/activity/bg;

.field public static final enum g:Lcom/google/android/location/activity/bg;

.field public static final enum h:Lcom/google/android/location/activity/bg;

.field private static final synthetic i:[Lcom/google/android/location/activity/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "SCAN_OVERLAP_RATIO_0_2"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->a:Lcom/google/android/location/activity/bg;

    .line 111
    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "SCAN_OVERLAP_COUNT_0_2"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->b:Lcom/google/android/location/activity/bg;

    .line 115
    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "SCAN_OVERLAP_MIN_RADIUS_0_2"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->c:Lcom/google/android/location/activity/bg;

    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "SCAN_OVERLAP_RATIO_1_2"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->d:Lcom/google/android/location/activity/bg;

    .line 117
    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "WIFI_LOC_DISTANCE_0_1"

    invoke-direct {v0, v1, v7}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->e:Lcom/google/android/location/activity/bg;

    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "WIFI_LOC_DISTANCE_0_2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->f:Lcom/google/android/location/activity/bg;

    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "WIFI_LOC_DISTANCE_1_2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->g:Lcom/google/android/location/activity/bg;

    .line 119
    new-instance v0, Lcom/google/android/location/activity/bg;

    const-string v1, "CELL_LOC_DISTANCE_0_2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/activity/bg;->h:Lcom/google/android/location/activity/bg;

    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/location/activity/bg;

    sget-object v1, Lcom/google/android/location/activity/bg;->a:Lcom/google/android/location/activity/bg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/activity/bg;->b:Lcom/google/android/location/activity/bg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/activity/bg;->c:Lcom/google/android/location/activity/bg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/activity/bg;->d:Lcom/google/android/location/activity/bg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/activity/bg;->e:Lcom/google/android/location/activity/bg;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/activity/bg;->f:Lcom/google/android/location/activity/bg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/activity/bg;->g:Lcom/google/android/location/activity/bg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/activity/bg;->h:Lcom/google/android/location/activity/bg;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/activity/bg;->i:[Lcom/google/android/location/activity/bg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/activity/bg;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/google/android/location/activity/bg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bg;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/activity/bg;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/location/activity/bg;->i:[Lcom/google/android/location/activity/bg;

    invoke-virtual {v0}, [Lcom/google/android/location/activity/bg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/activity/bg;

    return-object v0
.end method

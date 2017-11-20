.class public final enum Lcom/google/android/location/k/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/k/k;

.field public static final enum b:Lcom/google/android/location/k/k;

.field public static final enum c:Lcom/google/android/location/k/k;

.field public static final enum d:Lcom/google/android/location/k/k;

.field public static final enum e:Lcom/google/android/location/k/k;

.field public static final enum f:Lcom/google/android/location/k/k;

.field public static final enum g:Lcom/google/android/location/k/k;

.field public static final enum h:Lcom/google/android/location/k/k;

.field public static final enum i:Lcom/google/android/location/k/k;

.field public static final enum j:Lcom/google/android/location/k/k;

.field public static final enum k:Lcom/google/android/location/k/k;

.field public static final enum l:Lcom/google/android/location/k/k;

.field public static final enum m:Lcom/google/android/location/k/k;

.field private static final synthetic p:[Lcom/google/android/location/k/k;


# instance fields
.field public n:Ljava/lang/String;

.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "LOCATOR"

    const-string v2, "NetworkLocationLocator"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    .line 127
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "ACTIVE_COLLECTOR"

    const-string v2, "NetworkLocationActiveCollector"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->b:Lcom/google/android/location/k/k;

    .line 128
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "BURST_COLLECTOR"

    const-string v2, "NetworkLocationBurstCollector"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    .line 129
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "PASSIVE_COLLECTOR"

    const-string v2, "NetworkLocationPassiveCollector"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    .line 130
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "CACHE_UPDATER"

    const-string v2, "NetworkLocationCacheUpdater"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    .line 131
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "CALIBRATION_COLLECTOR"

    const/4 v2, 0x5

    const-string v3, "NetworkLocationCalibrationCollector"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->f:Lcom/google/android/location/k/k;

    .line 132
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "SENSOR_COLLECTOR"

    const/4 v2, 0x6

    const-string v3, "NetworkLocationSCollector"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->g:Lcom/google/android/location/k/k;

    .line 133
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "SENSOR_UPLOADER"

    const/4 v2, 0x7

    const-string v3, "NetworkLocationSensorUploader"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->h:Lcom/google/android/location/k/k;

    .line 134
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "ACTIVITY_DETECTION"

    const/16 v2, 0x8

    const-string v3, "NetworkLocationActivityDetection"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    .line 135
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "IN_OUT_DOOR_COLLECTOR"

    const/16 v2, 0x9

    const-string v3, "NetworkLocationInOutCollector"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->j:Lcom/google/android/location/k/k;

    .line 136
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "BURST_COLLECTION_TRIGGER"

    const/16 v2, 0xa

    const-string v3, "NetworkLocationBurstCollectionTrigger"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    .line 137
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "VEHICLE_EXIT_DETECTOR"

    const/16 v2, 0xb

    const-string v3, "NetworkLocationVehicleExitDetector"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->l:Lcom/google/android/location/k/k;

    .line 138
    new-instance v0, Lcom/google/android/location/k/k;

    const-string v1, "OFF_BODY_DETECTOR"

    const/16 v2, 0xc

    const-string v3, "NetworkLocationOffBodyDetector"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/location/k/k;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/location/k/k;->m:Lcom/google/android/location/k/k;

    .line 125
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/android/location/k/k;

    sget-object v1, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/k/k;->b:Lcom/google/android/location/k/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/k/k;->f:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/k/k;->g:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/k/k;->h:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/location/k/k;->j:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/location/k/k;->l:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/location/k/k;->m:Lcom/google/android/location/k/k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/k/k;->p:[Lcom/google/android/location/k/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 158
    iput-object p3, p0, Lcom/google/android/location/k/k;->n:Ljava/lang/String;

    .line 159
    iput-boolean p4, p0, Lcom/google/android/location/k/k;->o:Z

    .line 160
    return-void
.end method

.method public static final a(I)Lcom/google/android/location/k/k;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/google/android/location/k/k;->values()[Lcom/google/android/location/k/k;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/k/k;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/google/android/location/k/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/k/k;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/k/k;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/android/location/k/k;->p:[Lcom/google/android/location/k/k;

    invoke-virtual {v0}, [Lcom/google/android/location/k/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/k/k;

    return-object v0
.end method

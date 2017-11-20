.class public final enum Lcom/google/android/location/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/e;

.field public static final enum b:Lcom/google/android/location/e;

.field public static final enum c:Lcom/google/android/location/e;

.field public static final enum d:Lcom/google/android/location/e;

.field public static final enum e:Lcom/google/android/location/e;

.field public static final enum f:Lcom/google/android/location/e;

.field public static final enum g:Lcom/google/android/location/e;

.field public static final enum h:Lcom/google/android/location/e;

.field public static final enum i:Lcom/google/android/location/e;

.field public static final enum j:Lcom/google/android/location/e;

.field private static final synthetic k:[Lcom/google/android/location/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    .line 72
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    .line 73
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "GPS_WAIT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    .line 74
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "SCAN_WAIT"

    invoke-direct {v0, v1, v6}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->d:Lcom/google/android/location/e;

    .line 75
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "POST_SCAN_GPS_WAIT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->e:Lcom/google/android/location/e;

    .line 76
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "UPLOAD_WAIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->f:Lcom/google/android/location/e;

    .line 77
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "CALIBRATION_WAIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->g:Lcom/google/android/location/e;

    .line 78
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "SENSOR_COLLECTION_WAIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->h:Lcom/google/android/location/e;

    .line 79
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "IN_OUT_DOOR_COLLECTION_WAIT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->i:Lcom/google/android/location/e;

    .line 80
    new-instance v0, Lcom/google/android/location/e;

    const-string v1, "RTT_WAIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/e;->j:Lcom/google/android/location/e;

    .line 70
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/e;->d:Lcom/google/android/location/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/location/e;->e:Lcom/google/android/location/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/location/e;->f:Lcom/google/android/location/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/location/e;->g:Lcom/google/android/location/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/location/e;->h:Lcom/google/android/location/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/location/e;->i:Lcom/google/android/location/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/location/e;->j:Lcom/google/android/location/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/e;->k:[Lcom/google/android/location/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/e;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/google/android/location/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/e;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/e;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/location/e;->k:[Lcom/google/android/location/e;

    invoke-virtual {v0}, [Lcom/google/android/location/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/e;

    return-object v0
.end method

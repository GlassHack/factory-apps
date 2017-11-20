.class public final enum Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

.field public static final enum NO_ATTRIBUTION_REQUIRED:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

.field public static final enum WAZE:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    const-string v1, "NO_ATTRIBUTION_REQUIRED"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->NO_ATTRIBUTION_REQUIRED:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    .line 75
    new-instance v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    const-string v1, "WAZE"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->WAZE:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    sget-object v1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->NO_ATTRIBUTION_REQUIRED:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->WAZE:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->$VALUES:[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->number:I

    .line 81
    return-void
.end method

.method public static valueOf(I)Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;
    .locals 5

    .prologue
    .line 94
    invoke-static {}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->values()[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 95
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->getNumber()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 99
    :goto_1
    return-object v0

    .line 94
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->$VALUES:[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$Provider;->number:I

    return v0
.end method

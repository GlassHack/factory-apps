.class public final enum Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

.field public static final enum INCIDENT_ACCIDENT:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

.field public static final enum INCIDENT_CONSTRUCTION:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

.field public static final enum INCIDENT_OTHER:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

.field public static final enum INCIDENT_ROAD_CLOSED:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;


# instance fields
.field private final iconResourceId:I

.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28
    new-instance v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    const-string v1, "INCIDENT_ACCIDENT"

    sget v2, Lcom/google/glass/navlib/R$drawable;->incident_accident:I

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_ACCIDENT:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 30
    new-instance v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    const-string v1, "INCIDENT_CONSTRUCTION"

    sget v2, Lcom/google/glass/navlib/R$drawable;->incident_construction:I

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_CONSTRUCTION:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 32
    new-instance v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    const-string v1, "INCIDENT_OTHER"

    const/16 v2, 0x7f

    sget v3, Lcom/google/glass/navlib/R$drawable;->incident_incident:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_OTHER:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 34
    new-instance v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    const-string v1, "INCIDENT_ROAD_CLOSED"

    sget v2, Lcom/google/glass/navlib/R$drawable;->incident_roadclosed:I

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_ROAD_CLOSED:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    sget-object v1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_ACCIDENT:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_CONSTRUCTION:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_OTHER:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->INCIDENT_ROAD_CLOSED:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->$VALUES:[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->number:I

    .line 42
    iput p4, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->iconResourceId:I

    .line 43
    return-void
.end method

.method public static valueOf(I)Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;
    .locals 5

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->values()[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 62
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->getNumber()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 66
    :goto_1
    return-object v0

    .line 61
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->$VALUES:[Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->number:I

    return v0
.end method

.method public final getResourceIconId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident$IncidentType;->iconResourceId:I

    return v0
.end method

.class Lcom/google/glass/maps/MapsRenderer$State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private locationAccuracy:F

.field private markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

.field private polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

.field private position:Lcom/google/glass/maps/map/CameraPosition;

.field private targetZoom:F

.field private userLocation:Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->targetZoom:F

    .line 76
    new-array v0, v1, [Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    .line 79
    new-array v0, v1, [Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/MapsRenderer$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/glass/maps/MapsRenderer$State;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/MapsRenderer$State;)[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/maps/MapsRenderer$State;[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;)[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/maps/MapsRenderer$State;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/maps/MapsRenderer$State;)[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/maps/MapsRenderer$State;[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;)[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/maps/MapsRenderer$State;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/maps/MapsRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->position:Lcom/google/glass/maps/map/CameraPosition;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/maps/MapsRenderer$State;Lcom/google/glass/maps/map/CameraPosition;)Lcom/google/glass/maps/map/CameraPosition;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/maps/MapsRenderer$State;->position:Lcom/google/glass/maps/map/CameraPosition;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/glass/maps/MapsRenderer$State;F)F
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/google/glass/maps/MapsRenderer$State;->targetZoom:F

    return p1
.end method


# virtual methods
.method snapshotFrom(Lcom/google/glass/maps/MapsRenderer$State;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p1, Lcom/google/glass/maps/MapsRenderer$State;->position:Lcom/google/glass/maps/map/CameraPosition;

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->position:Lcom/google/glass/maps/map/CameraPosition;

    .line 83
    iget-object v0, p1, Lcom/google/glass/maps/MapsRenderer$State;->userLocation:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->userLocation:Lcom/google/android/maps/driveabout/model/ab;

    .line 84
    iget v0, p1, Lcom/google/glass/maps/MapsRenderer$State;->locationAccuracy:F

    iput v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->locationAccuracy:F

    .line 85
    iget v0, p1, Lcom/google/glass/maps/MapsRenderer$State;->targetZoom:F

    iput v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->targetZoom:F

    .line 86
    iget-object v0, p1, Lcom/google/glass/maps/MapsRenderer$State;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    .line 87
    iget-object v0, p1, Lcom/google/glass/maps/MapsRenderer$State;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer$State;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    .line 88
    return-void
.end method

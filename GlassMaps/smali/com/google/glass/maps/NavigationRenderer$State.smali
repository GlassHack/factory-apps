.class Lcom/google/glass/maps/NavigationRenderer$State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

.field private cameraPosition:Lcom/google/glass/maps/map/CameraPosition;

.field private curTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

.field private dimAmount:F

.field private dimLabels:Z

.field private dimMap:Z

.field private drawLineLabelsUnderPolyline:Z

.field private locationAccuracy:F

.field private locationBearing:F

.field private nextTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

.field private routePolyline:Lcom/google/glass/maps/map/ColorPolyline;

.field private suppressLabels:Z

.field private trafficIncidents:Ljava/util/List;

.field private userLocation:Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/ag;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    .line 136
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimAmount:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/NavigationRenderer$1;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationRenderer$State;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->userLocation:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/maps/NavigationRenderer$State;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimMap:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimMap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->userLocation:Lcom/google/android/maps/driveabout/model/ab;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/maps/NavigationRenderer$State;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimLabels:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimLabels:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/maps/NavigationRenderer$State;)F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimAmount:F

    return v0
.end method

.method static synthetic access$1202(Lcom/google/glass/maps/NavigationRenderer$State;F)F
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimAmount:F

    return p1
.end method

.method static synthetic access$1300(Lcom/google/glass/maps/NavigationRenderer$State;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->drawLineLabelsUnderPolyline:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->drawLineLabelsUnderPolyline:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->cameraPosition:Lcom/google/glass/maps/map/CameraPosition;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/glass/maps/map/CameraPosition;)Lcom/google/glass/maps/map/CameraPosition;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->cameraPosition:Lcom/google/glass/maps/map/CameraPosition;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/maps/NavigationRenderer$State;)F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->locationAccuracy:F

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/maps/NavigationRenderer$State;F)F
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->locationAccuracy:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/maps/NavigationRenderer$State;)F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->locationBearing:F

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/maps/NavigationRenderer$State;F)F
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->locationBearing:F

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/maps/NavigationRenderer$State;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->suppressLabels:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->suppressLabels:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/ColorPolyline;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->routePolyline:Lcom/google/glass/maps/map/ColorPolyline;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/glass/maps/map/ColorPolyline;)Lcom/google/glass/maps/map/ColorPolyline;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->routePolyline:Lcom/google/glass/maps/map/ColorPolyline;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/maps/NavigationRenderer$State;)[Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/maps/NavigationRenderer$State;[Lcom/google/android/maps/driveabout/model/ag;)[Lcom/google/android/maps/driveabout/model/ag;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/maps/NavigationRenderer$State;)Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->trafficIncidents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/maps/NavigationRenderer$State;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->trafficIncidents:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->curTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->curTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$State;->nextTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

    return-object p1
.end method


# virtual methods
.method snapshotFrom(Lcom/google/glass/maps/NavigationRenderer$State;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->cameraPosition:Lcom/google/glass/maps/map/CameraPosition;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->cameraPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 143
    iget-object v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->userLocation:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->userLocation:Lcom/google/android/maps/driveabout/model/ab;

    .line 144
    iget v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->locationAccuracy:F

    iput v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->locationAccuracy:F

    .line 145
    iget v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->locationBearing:F

    iput v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->locationBearing:F

    .line 146
    iget-object v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->routePolyline:Lcom/google/glass/maps/map/ColorPolyline;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->routePolyline:Lcom/google/glass/maps/map/ColorPolyline;

    .line 147
    iget-object v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->trafficIncidents:Ljava/util/List;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->trafficIncidents:Ljava/util/List;

    .line 148
    iget-object v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->curTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->curTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

    .line 149
    iget-object v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->nextTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->nextTurnLocation:Lcom/google/android/maps/driveabout/model/ab;

    .line 150
    iget-boolean v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->dimMap:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimMap:Z

    .line 151
    iget-boolean v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->dimLabels:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimLabels:Z

    .line 152
    iget v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->dimAmount:F

    iput v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->dimAmount:F

    .line 153
    iget-boolean v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->drawLineLabelsUnderPolyline:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->drawLineLabelsUnderPolyline:Z

    .line 154
    iget-boolean v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->suppressLabels:Z

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->suppressLabels:Z

    .line 155
    iget-object v0, p1, Lcom/google/glass/maps/NavigationRenderer$State;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer$State;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    .line 156
    return-void
.end method

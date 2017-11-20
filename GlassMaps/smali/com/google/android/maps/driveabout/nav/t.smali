.class final Lcom/google/android/maps/driveabout/nav/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private final b:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/nav/w;

.field private final e:I

.field private final f:[Lcom/google/android/maps/driveabout/nav/b;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/t;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 591
    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/t;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 592
    iput p3, p0, Lcom/google/android/maps/driveabout/nav/t;->c:I

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->d:Lcom/google/android/maps/driveabout/nav/w;

    .line 594
    iput p4, p0, Lcom/google/android/maps/driveabout/nav/t;->e:I

    .line 595
    iput-object p5, p0, Lcom/google/android/maps/driveabout/nav/t;->f:[Lcom/google/android/maps/driveabout/nav/b;

    .line 596
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/android/maps/driveabout/nav/r;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/nav/t;-><init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/t;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/nav/t;)I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/t;->c:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/nav/t;)I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/t;->e:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->f:[Lcom/google/android/maps/driveabout/nav/b;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/nav/t;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/t;->d:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 615
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mFrom"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/t;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 616
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mWaypoints"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/t;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 617
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mTravelMode"

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/t;->c:I

    .line 618
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mCurrentRoute"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/t;->d:Lcom/google/android/maps/driveabout/nav/w;

    .line 619
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mActionType"

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/t;->e:I

    .line 620
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mOptions"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/t;->f:[Lcom/google/android/maps/driveabout/nav/b;

    .line 621
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/google/common/base/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

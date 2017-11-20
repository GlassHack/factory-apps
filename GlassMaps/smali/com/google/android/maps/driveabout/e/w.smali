.class final Lcom/google/android/maps/driveabout/e/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private final b:Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/w;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 189
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/w;->b:Lcom/google/android/maps/driveabout/nav/w;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/e/v;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/e/w;-><init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/e/w;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/w;->a:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/e/w;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/w;->b:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

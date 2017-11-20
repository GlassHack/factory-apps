.class final Lcom/google/android/maps/driveabout/store/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bt;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/model/av;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/store/j;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/o;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/o;)Lcom/google/android/maps/driveabout/model/av;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/o;->a:Lcom/google/android/maps/driveabout/model/av;

    return-object v0
.end method


# virtual methods
.method public final handleTile(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V
    .locals 0

    .prologue
    .line 291
    if-nez p2, :cond_0

    .line 292
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/o;->a:Lcom/google/android/maps/driveabout/model/av;

    .line 294
    :cond_0
    return-void
.end method

.class final Lcom/google/android/maps/driveabout/location/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/location/m;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/location/m;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/s;->a:Lcom/google/android/maps/driveabout/location/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/location/n;)V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/s;-><init>(Lcom/google/android/maps/driveabout/location/m;)V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/s;->a:Lcom/google/android/maps/driveabout/location/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->getGpsInfo()Lcom/google/android/maps/driveabout/location/r;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_0

    .line 725
    new-instance v1, Lcom/google/android/maps/driveabout/c/d;

    .line 726
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/r;->a()I

    move-result v2

    .line 727
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/r;->b()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/maps/driveabout/c/d;-><init>(III)V

    .line 725
    invoke-static {v1}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 728
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/s;->a:Lcom/google/android/maps/driveabout/location/m;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/location/m;->c(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/e;->a(Lcom/google/android/maps/driveabout/location/r;)V

    .line 730
    :cond_0
    return-void
.end method

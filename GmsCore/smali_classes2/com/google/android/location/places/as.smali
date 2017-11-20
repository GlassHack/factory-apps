.class public final Lcom/google/android/location/places/as;
.super Lcom/google/android/location/o/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const-string v0, "places_ks"

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/o/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Places"

    invoke-static {v0, p1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

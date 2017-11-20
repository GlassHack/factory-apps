.class final Lcom/google/android/location/geofencer/data/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/location/geofencer/data/g;

    check-cast p2, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {p1}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/location/geofencer/data/g;->a()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

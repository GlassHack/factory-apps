.class final Lcom/google/android/location/geofencer/data/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/location/geofencer/data/g;

    check-cast p2, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {p1}, Lcom/google/android/location/geofencer/data/g;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/location/geofencer/data/g;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

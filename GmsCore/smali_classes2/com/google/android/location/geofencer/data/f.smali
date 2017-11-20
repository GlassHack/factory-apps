.class public final Lcom/google/android/location/geofencer/data/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Lcom/google/android/location/geofencer/data/f;->a:D

    .line 94
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/location/geofencer/data/g;

    check-cast p2, Lcom/google/android/location/geofencer/data/g;

    iget-wide v0, p0, Lcom/google/android/location/geofencer/data/f;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/google/android/location/geofencer/data/g;->a(D)I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/location/geofencer/data/f;->a:D

    invoke-virtual {p2, v2, v3}, Lcom/google/android/location/geofencer/data/g;->a(D)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

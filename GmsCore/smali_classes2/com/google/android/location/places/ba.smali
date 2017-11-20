.class public final Lcom/google/android/location/places/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/location/f/aj;


# instance fields
.field public final a:Lcom/google/android/gms/maps/model/LatLngBounds;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/location/places/PlaceFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/location/places/bb;

    invoke-direct {v0}, Lcom/google/android/location/places/bb;-><init>()V

    sput-object v0, Lcom/google/android/location/places/ba;->e:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 30
    iput-object p2, p0, Lcom/google/android/location/places/ba;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/android/location/places/ba;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/google/android/location/places/ba;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    .line 33
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/places/ba;

    if-nez v2, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, Lcom/google/android/location/places/ba;

    .line 53
    iget-object v2, p0, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p1, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/ba;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/location/places/ba;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/ba;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/location/places/ba;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/ba;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v3, p1, Lcom/google/android/location/places/ba;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/places/ba;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/ba;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/ba;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/places/ba;->d:Lcom/google/android/gms/location/places/PlaceFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

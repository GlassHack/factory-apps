.class public final Lcom/google/android/location/places/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/at;


# static fields
.field public static final a:Lcom/google/android/gms/location/places/internal/PlacesParams;


# instance fields
.field private final b:Lcom/google/android/location/places/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/location/places/internal/PlacesParams;

    const-string v1, "com.google.android.gms"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/places/be;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/places/b;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/location/places/be;->b:Lcom/google/android/location/places/b;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/ak;Lcom/google/android/location/places/w;)V
    .locals 8

    .prologue
    const-wide v6, 0x416312d000000000L    # 1.0E7

    .line 29
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget v1, p1, Lcom/google/android/location/f/ak;->d:I

    int-to-double v2, v1

    div-double/2addr v2, v6

    iget v1, p1, Lcom/google/android/location/f/ak;->e:I

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 32
    iget-object v1, p0, Lcom/google/android/location/places/be;->b:Lcom/google/android/location/places/b;

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->h()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/places/be;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    new-instance v4, Lcom/google/android/location/places/bf;

    invoke-direct {v4, p2}, Lcom/google/android/location/places/bf;-><init>(Lcom/google/android/location/places/w;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/location/places/b;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 37
    return-void
.end method

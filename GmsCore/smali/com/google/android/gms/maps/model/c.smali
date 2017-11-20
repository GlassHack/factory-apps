.class public final Lcom/google/android/gms/maps/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/maps/model/LatLng;

.field b:F

.field c:F

.field d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 50
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    iput v0, p0, Lcom/google/android/gms/maps/model/c;->b:F

    .line 51
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->c:F

    iput v0, p0, Lcom/google/android/gms/maps/model/c;->c:F

    .line 52
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->d:F

    iput v0, p0, Lcom/google/android/gms/maps/model/c;->d:F

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    .prologue
    .line 111
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/c;->b:F

    iget v3, p0, Lcom/google/android/gms/maps/model/c;->c:F

    iget v4, p0, Lcom/google/android/gms/maps/model/c;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public final a(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/google/android/gms/maps/model/c;->b:F

    .line 79
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/c;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/gms/maps/model/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 60
    return-object p0
.end method

.method public final b(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/google/android/gms/maps/model/c;->c:F

    .line 98
    return-object p0
.end method

.method public final c(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/google/android/gms/maps/model/c;->d:F

    .line 106
    return-object p0
.end method

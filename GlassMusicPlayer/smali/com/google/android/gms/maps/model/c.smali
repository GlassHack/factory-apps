.class public final Lcom/google/android/gms/maps/model/c;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 3

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    iget v1, p0, Lcom/google/android/gms/maps/model/c;->b:F

    iget v2, p0, Lcom/google/android/gms/maps/model/c;->a:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(FF)V

    return-object v0
.end method

.method public final a(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/c;->b:F

    return-object p0
.end method

.method public final b(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/c;->a:F

    return-object p0
.end method

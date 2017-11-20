.class public final Lcom/google/maps/api/android/lib6/c/aw;
.super Ljava/lang/Object;


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/c/aw;->a:D

    iput-wide p3, p0, Lcom/google/maps/api/android/lib6/c/aw;->b:D

    iput-wide p5, p0, Lcom/google/maps/api/android/lib6/c/aw;->c:D

    return-void
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/c/aw;
    .locals 10

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    new-instance v1, Lcom/google/maps/api/android/lib6/c/aw;

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/c/aw;-><init>(DDD)V

    return-object v1
.end method

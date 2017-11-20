.class public final Lcom/google/android/location/places/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/android/gms/maps/model/LatLng;

.field final c:F

.field final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/places/b/l;-><init>(Lcom/google/android/gms/maps/model/LatLng;FI)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;FI)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/g/a/e/c;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/google/android/location/places/b/l;->c:F

    .line 53
    iput-object p1, p0, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 54
    iput p3, p0, Lcom/google/android/location/places/b/l;->d:I

    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/places/b/l;

    if-nez v2, :cond_2

    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    check-cast p1, Lcom/google/android/location/places/b/l;

    .line 71
    iget-object v2, p0, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p1, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/location/places/b/l;->c:F

    iget v3, p1, Lcom/google/android/location/places/b/l;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/location/places/b/l;->d:I

    iget v3, p1, Lcom/google/android/location/places/b/l;->d:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "latLng"

    iget-object v2, p0, Lcom/google/android/location/places/b/l;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "radiusMeters"

    iget v2, p0, Lcom/google/android/location/places/b/l;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/location/places/b/l;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

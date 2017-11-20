.class public final Lcom/google/android/location/os/real/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/ah;


# instance fields
.field private final a:Landroid/location/Location;

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/location/Location;JI)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null location in RealLocation constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    .line 37
    iput-wide p2, p0, Lcom/google/android/location/os/real/av;->b:J

    .line 38
    iput p4, p0, Lcom/google/android/location/os/real/av;->c:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/location/os/real/av;->c:I

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/android/location/os/real/av;->b:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/location/os/real/av;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    return v0
.end method

.method public final k()F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    return v0
.end method

.method public final m()D
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v1, "RealLocation [location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, " satellites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Lcom/google/android/location/os/real/av;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, " bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string v1, " altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/google/android/location/os/real/av;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

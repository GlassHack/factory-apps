.class public final Lcom/google/android/maps/driveabout/location/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    .line 25
    iget-wide v0, p1, Lcom/google/android/maps/driveabout/location/z;->b:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    .line 26
    iget v0, p1, Lcom/google/android/maps/driveabout/location/z;->c:F

    iput v0, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    .line 27
    iget v0, p1, Lcom/google/android/maps/driveabout/location/z;->d:F

    iput v0, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JFF)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    .line 18
    iput p4, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    .line 19
    iput p5, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    .line 66
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    .line 53
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    return-wide v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    .line 81
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    iget v3, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x41

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "[provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " time:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

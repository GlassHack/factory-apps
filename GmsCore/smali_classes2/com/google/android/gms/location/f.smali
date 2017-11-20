.class public final Lcom/google/android/gms/location/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:I

.field public e:I

.field private f:S

.field private g:D

.field private h:D

.field private i:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    .line 63
    iput v3, p0, Lcom/google/android/gms/location/f;->b:I

    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/location/f;->c:J

    .line 65
    iput-short v2, p0, Lcom/google/android/gms/location/f;->f:S

    .line 69
    iput v3, p0, Lcom/google/android/gms/location/f;->d:I

    .line 70
    iput v2, p0, Lcom/google/android/gms/location/f;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/f;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 110
    iput-wide v2, p0, Lcom/google/android/gms/location/f;->c:J

    .line 114
    :goto_0
    return-object p0

    .line 112
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/location/f;->c:J

    goto :goto_0
.end method

.method public final a(DDF)Lcom/google/android/gms/location/f;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/google/android/gms/location/f;->f:S

    .line 145
    iput-wide p1, p0, Lcom/google/android/gms/location/f;->g:D

    .line 146
    iput-wide p3, p0, Lcom/google/android/gms/location/f;->h:D

    .line 147
    iput p5, p0, Lcom/google/android/gms/location/f;->i:F

    .line 148
    return-object p0
.end method

.method public final b()Lcom/google/android/gms/location/e;
    .locals 13

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget v0, p0, Lcom/google/android/gms/location/f;->b:I

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transitions types not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iget v0, p0, Lcom/google/android/gms/location/f;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/f;->e:I

    if-gez v0, :cond_2

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/location/f;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expiration not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_3
    iget-short v0, p0, Lcom/google/android/gms/location/f;->f:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geofence region not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_4
    iget v0, p0, Lcom/google/android/gms/location/f;->d:I

    if-gez v0, :cond_5

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notification responsiveness should be nonnegative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_5
    new-instance v1, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    iget-object v2, p0, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/location/f;->b:I

    iget-wide v4, p0, Lcom/google/android/gms/location/f;->g:D

    iget-wide v6, p0, Lcom/google/android/gms/location/f;->h:D

    iget v8, p0, Lcom/google/android/gms/location/f;->i:F

    iget-wide v9, p0, Lcom/google/android/gms/location/f;->c:J

    iget v11, p0, Lcom/google/android/gms/location/f;->d:I

    iget v12, p0, Lcom/google/android/gms/location/f;->e:I

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/location/internal/ParcelableGeofence;-><init>(Ljava/lang/String;IDDFJII)V

    return-object v1
.end method

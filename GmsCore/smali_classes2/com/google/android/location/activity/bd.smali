.class final Lcom/google/android/location/activity/bd;
.super Lcom/google/android/location/activity/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/s;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/location/activity/bd;->k()V

    .line 28
    iget-boolean v0, p0, Lcom/google/android/location/activity/bd;->a:Z

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-wide v4

    .line 31
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/bd;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bd;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/bd;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0
.end method

.method public final a(D)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/android/location/activity/s;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 40
    return-void
.end method

.method protected final d()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/location/activity/bd;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->n()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "TiltDetectorInPast"

    return-object v0
.end method

.method protected final j_()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/location/activity/bd;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/bd;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->b(J)V

    .line 63
    return-void
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x5

    return v0
.end method

.method public final q_()J
    .locals 2

    .prologue
    .line 67
    const-wide/32 v0, 0x1ad27480

    return-wide v0
.end method

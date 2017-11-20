.class final Lcom/google/android/location/activity/bc;
.super Lcom/google/android/location/activity/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/r;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/location/activity/bc;->k()V

    .line 27
    iget-boolean v0, p0, Lcom/google/android/location/activity/bc;->a:Z

    if-eqz v0, :cond_0

    .line 31
    :goto_0
    return-wide v4

    .line 30
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/bc;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bc;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/bc;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0
.end method

.method public final a(D)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/android/location/activity/r;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 39
    return-void
.end method

.method protected final d()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/location/activity/bc;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->n()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "TiltDetector"

    return-object v0
.end method

.method protected final j_()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/location/activity/bc;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/bc;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->b(J)V

    .line 62
    return-void
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x5

    return v0
.end method

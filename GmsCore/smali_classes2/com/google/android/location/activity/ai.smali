.class final Lcom/google/android/location/activity/ai;
.super Lcom/google/android/location/activity/r;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/r;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/ai;->b:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 31
    invoke-virtual {p0}, Lcom/google/android/location/activity/ai;->k()V

    .line 32
    iget-boolean v0, p0, Lcom/google/android/location/activity/ai;->a:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-wide v4

    .line 35
    :cond_0
    if-nez p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/google/android/location/activity/ai;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, v3}, Lcom/google/android/location/activity/k;->a(Z)V

    .line 38
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/ai;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/ai;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/ai;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/location/activity/ai;->b:Z

    if-eqz v0, :cond_5

    .line 45
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Low power not still detected. tiltingDetected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/location/activity/ai;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityScheduler"

    const-string v1, "Switching to full mode"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/activity/ai;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, v3}, Lcom/google/android/location/activity/k;->a(Z)V

    .line 49
    new-instance v0, Lcom/google/android/location/activity/x;

    iget-object v1, p0, Lcom/google/android/location/activity/ai;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/ai;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/x;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/ai;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0

    .line 52
    :cond_5
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Low power still detected. Reporting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/activity/ai;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 54
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/ai;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/ai;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/ai;->a(Lcom/google/android/location/activity/bb;)V

    goto/16 :goto_0
.end method

.method public final a(D)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/android/location/activity/r;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 62
    iget-boolean v0, p0, Lcom/google/android/location/activity/ai;->a:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/activity/ai;->b:Z

    goto :goto_0
.end method

.method protected final d()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/location/activity/ai;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->m()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "LowPowerDetector"

    return-object v0
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x5

    return v0
.end method

.method protected final m()D
    .locals 2

    .prologue
    .line 95
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    return-wide v0
.end method

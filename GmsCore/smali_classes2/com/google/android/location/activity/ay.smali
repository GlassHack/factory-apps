.class final Lcom/google/android/location/activity/ay;
.super Lcom/google/android/location/activity/bb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/ba;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/bb;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/ay;->a:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/location/activity/bj;Lcom/google/android/location/activity/bj;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    iget-object v0, p2, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    sget-object v1, Lcom/google/android/location/f/ax;->b:Lcom/google/android/location/f/ax;

    if-ne v0, v1, :cond_1

    iget-wide v0, p2, Lcom/google/android/location/activity/bj;->b:D

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 61
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "Location Changed. Leaving low power mode."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/ay;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, v4}, Lcom/google/android/location/activity/k;->a(Z)V

    .line 63
    invoke-virtual {p0, v4}, Lcom/google/android/location/activity/ay;->a(I)V

    .line 65
    :cond_1
    return-void
.end method

.method protected final a(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 71
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    new-instance v1, Lcom/google/android/gms/location/DetectedActivity;

    const/16 v2, 0x64

    invoke-direct {v1, v6, v2}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    iget-object v2, p0, Lcom/google/android/location/activity/ay;->e:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/ay;->e:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V

    .line 74
    iget-object v1, p0, Lcom/google/android/location/activity/ay;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/location/activity/ay;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->q()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v6}, Lcom/google/android/location/activity/ay;->a(I)V

    .line 80
    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 28
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "SignificantMotionDetectionState: stateEntered."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-super {p0}, Lcom/google/android/location/activity/bb;->g()V

    .line 30
    iget-object v0, p0, Lcom/google/android/location/activity/ay;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->i()Lcom/google/android/location/activity/az;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/location/activity/az;->a(Lcom/google/android/location/activity/ba;)Z

    .line 31
    return-void
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/android/location/activity/bb;->h()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/activity/ay;->a:Z

    .line 37
    iget-object v0, p0, Lcom/google/android/location/activity/ay;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->i()Lcom/google/android/location/activity/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/activity/az;->a()Z

    .line 38
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    iget-boolean v0, p0, Lcom/google/android/location/activity/ay;->a:Z

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    const-string v1, "Significant motion detected"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/ay;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/os/c;->X:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/location/activity/ay;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, v2}, Lcom/google/android/location/activity/k;->a(Z)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/google/android/location/activity/ay;->a(I)V

    goto :goto_0
.end method

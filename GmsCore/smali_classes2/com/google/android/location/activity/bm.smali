.class final Lcom/google/android/location/activity/bm;
.super Lcom/google/android/location/activity/bp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/bk;

.field private c:J


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/bk;)V
    .locals 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bp;-><init>(Lcom/google/android/location/activity/bk;)V

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/activity/bm;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/bk;B)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bm;-><init>(Lcom/google/android/location/activity/bk;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lcom/google/android/location/activity/bp;->a()V

    .line 164
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/bm;->c:J

    .line 165
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->F()V

    .line 167
    return-void
.end method

.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    invoke-static {p1}, Lcom/google/android/location/activity/bk;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    invoke-static {v0}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bn;

    iget-object v2, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {v1, v2, v4}, Lcom/google/android/location/activity/bn;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    invoke-static {p1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/bm;->c:J

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/activity/bm;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 189
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "VehExitDetector"

    const-string v1, "Timed out while InVehicle state. Missed the transition?"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bs;

    iget-object v2, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {v1, v2, v4}, Lcom/google/android/location/activity/bs;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/location/activity/bp;)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/google/android/location/activity/bp;->a(Lcom/google/android/location/activity/bp;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/location/activity/bm;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->G()V

    .line 174
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "InVehicle"

    return-object v0
.end method

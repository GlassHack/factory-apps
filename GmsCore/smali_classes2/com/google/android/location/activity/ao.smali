.class final Lcom/google/android/location/activity/ao;
.super Lcom/google/android/location/activity/ar;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/an;


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/an;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/ar;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/an;B)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/ao;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 180
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "DetectingOffBody: stateEntered."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    iget-object v0, v0, Lcom/google/android/location/activity/an;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    iget v1, v1, Lcom/google/android/location/activity/an;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/k;->b(I)V

    .line 183
    return-void
.end method

.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "onActivityDetected(activity type = %s)"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    .line 203
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_2

    const-string v2, "OffBodyDetector"

    const-string v3, "  activity=%d, confidence=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 206
    iget-object v1, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    invoke-static {v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;)V

    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    .line 208
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "OffBodyDetector"

    const-string v1, "OFF_BODY detected."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    new-instance v1, Lcom/google/android/location/activity/aq;

    iget-object v2, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    invoke-direct {v1, v2, v6}, Lcom/google/android/location/activity/aq;-><init>(Lcom/google/android/location/activity/an;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V

    .line 219
    :cond_4
    :goto_0
    return-void

    .line 212
    :cond_5
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "OffBodyDetector"

    const-string v1, "MOVED detected."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    iget-object v1, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    iget-object v1, v1, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/activity/an;->g:J

    .line 214
    iget-object v0, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    new-instance v1, Lcom/google/android/location/activity/as;

    iget-object v2, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    invoke-direct {v1, v2, v6}, Lcom/google/android/location/activity/as;-><init>(Lcom/google/android/location/activity/an;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 4

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    new-instance v1, Lcom/google/android/location/activity/as;

    iget-object v2, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/as;-><init>(Lcom/google/android/location/activity/an;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    iget-object v0, v0, Lcom/google/android/location/activity/an;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/ao;->a:Lcom/google/android/location/activity/an;

    iget v1, v1, Lcom/google/android/location/activity/an;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/k;->c(I)V

    .line 189
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 223
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "DetectingOffBody: alarmRing."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "DetectingOffBody"

    return-object v0
.end method

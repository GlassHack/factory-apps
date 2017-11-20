.class final Lcom/google/android/location/activity/aq;
.super Lcom/google/android/location/activity/ar;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/an;


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/an;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/location/activity/aq;->a:Lcom/google/android/location/activity/an;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/ar;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/an;B)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/aq;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/location/activity/aq;->a:Lcom/google/android/location/activity/an;

    iget-object v1, p0, Lcom/google/android/location/activity/aq;->a:Lcom/google/android/location/activity/an;

    iget-object v1, v1, Lcom/google/android/location/activity/an;->c:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/activity/an;->g:J

    .line 260
    iget-object v0, p0, Lcom/google/android/location/activity/aq;->a:Lcom/google/android/location/activity/an;

    new-instance v1, Lcom/google/android/location/activity/as;

    iget-object v2, p0, Lcom/google/android/location/activity/aq;->a:Lcom/google/android/location/activity/an;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/as;-><init>(Lcom/google/android/location/activity/an;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 239
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "SleepState: stateEntered."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 2

    .prologue
    .line 244
    if-eqz p1, :cond_1

    .line 245
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "SleepState: screenStateChanged."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/activity/aq;->e()V

    .line 248
    :cond_1
    return-void
.end method

.method protected final c(Z)V
    .locals 2

    .prologue
    .line 252
    if-nez p1, :cond_1

    .line 253
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "SleepState: deepAmbientStateChanged."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/activity/aq;->e()V

    .line 256
    :cond_1
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "SleepState"

    return-object v0
.end method

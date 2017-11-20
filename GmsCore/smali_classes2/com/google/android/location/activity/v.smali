.class final Lcom/google/android/location/activity/v;
.super Lcom/google/android/location/activity/r;
.source "SourceFile"


# instance fields
.field final b:Lcom/google/android/location/activity/aj;

.field final c:Lcom/google/android/location/activity/am;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/r;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 25
    iput-boolean v0, p0, Lcom/google/android/location/activity/v;->g:Z

    .line 28
    iput-boolean v0, p0, Lcom/google/android/location/activity/v;->h:Z

    .line 32
    new-instance v0, Lcom/google/android/location/activity/aj;

    invoke-interface {p2}, Lcom/google/android/location/os/at;->y()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/aj;-><init>(Lcom/google/android/location/activity/k;Z)V

    iput-object v0, p0, Lcom/google/android/location/activity/v;->b:Lcom/google/android/location/activity/aj;

    .line 33
    new-instance v0, Lcom/google/android/location/activity/am;

    invoke-direct {v0}, Lcom/google/android/location/activity/am;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/v;->c:Lcom/google/android/location/activity/am;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 53
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FullAndOffBodyDetectingInFutureState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityDetected, result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/activity/v;->k()V

    .line 55
    iget-object v0, p0, Lcom/google/android/location/activity/v;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 56
    iget-boolean v0, p0, Lcom/google/android/location/activity/v;->a:Z

    if-eqz v0, :cond_1

    .line 113
    :goto_0
    return-wide v6

    .line 60
    :cond_1
    if-nez p1, :cond_2

    .line 62
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/v;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/v;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/v;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/activity/v;->g:Z

    if-nez v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/google/android/location/activity/v;->b:Lcom/google/android/location/activity/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/aj;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 72
    iget-object v3, p0, Lcom/google/android/location/activity/v;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v3, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_1

    .line 75
    :cond_3
    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/activity/v;->g:Z

    .line 78
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/activity/v;->h:Z

    if-nez v0, :cond_6

    .line 79
    iget-object v0, p0, Lcom/google/android/location/activity/v;->c:Lcom/google/android/location/activity/am;

    invoke-static {p1}, Lcom/google/android/location/activity/am;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 82
    iget-object v3, p0, Lcom/google/android/location/activity/v;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v3, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_2

    .line 85
    :cond_5
    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/activity/v;->h:Z

    .line 88
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/location/activity/v;->g:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/location/activity/v;->h:Z

    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {p0}, Lcom/google/android/location/activity/v;->n()V

    goto/16 :goto_0

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/activity/v;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    invoke-virtual {p0}, Lcom/google/android/location/activity/v;->o()V

    goto/16 :goto_0

    .line 99
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 103
    invoke-virtual {p0}, Lcom/google/android/location/activity/v;->k_()V

    goto/16 :goto_0

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/activity/v;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/v;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->d(J)V

    goto/16 :goto_0
.end method

.method public final a(D)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/location/activity/v;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/activity/k;->a(D)V

    .line 144
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/location/activity/v;->k_()V

    .line 139
    return-void
.end method

.method protected final d()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/location/activity/v;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->l()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "FullAndOffBodyDetector"

    return-object v0
.end method

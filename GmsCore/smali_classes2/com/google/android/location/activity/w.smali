.class final Lcom/google/android/location/activity/w;
.super Lcom/google/android/location/activity/y;
.source "SourceFile"


# instance fields
.field final b:Lcom/google/android/location/activity/am;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/y;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 18
    iput-boolean v0, p0, Lcom/google/android/location/activity/w;->g:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/android/location/activity/w;->h:Z

    .line 27
    new-instance v0, Lcom/google/android/location/activity/aj;

    invoke-interface {p2}, Lcom/google/android/location/os/at;->y()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/aj;-><init>(Lcom/google/android/location/activity/k;Z)V

    iput-object v0, p0, Lcom/google/android/location/activity/w;->c:Lcom/google/android/location/activity/aj;

    .line 28
    new-instance v0, Lcom/google/android/location/activity/am;

    invoke-direct {v0}, Lcom/google/android/location/activity/am;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/w;->b:Lcom/google/android/location/activity/am;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J
    .locals 8

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v2, -0x1

    .line 44
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "onActivityDetected, result="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/activity/w;->k()V

    .line 46
    iget-object v0, p0, Lcom/google/android/location/activity/w;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 47
    iget-boolean v0, p0, Lcom/google/android/location/activity/w;->a:Z

    if-eqz v0, :cond_1

    move-wide v0, v2

    .line 97
    :goto_0
    return-wide v0

    .line 51
    :cond_1
    if-nez p1, :cond_2

    .line 53
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/w;->d:Lcom/google/android/location/activity/k;

    iget-object v4, p0, Lcom/google/android/location/activity/w;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/w;->a(Lcom/google/android/location/activity/bb;)V

    move-wide v0, v2

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/activity/w;->h:Z

    if-nez v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/google/android/location/activity/w;->c:Lcom/google/android/location/activity/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/aj;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 63
    iget-object v7, p0, Lcom/google/android/location/activity/w;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v7, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_1

    .line 66
    :cond_3
    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/activity/w;->h:Z

    .line 69
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/activity/w;->g:Z

    if-nez v0, :cond_6

    .line 70
    iget-object v0, p0, Lcom/google/android/location/activity/w;->b:Lcom/google/android/location/activity/am;

    invoke-static {p1}, Lcom/google/android/location/activity/am;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 73
    iget-object v7, p0, Lcom/google/android/location/activity/w;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v7, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_2

    .line 76
    :cond_5
    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/activity/w;->g:Z

    .line 79
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/location/activity/w;->h:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/location/activity/w;->g:Z

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p0}, Lcom/google/android/location/activity/w;->n()V

    :goto_3
    move-wide v0, v2

    .line 97
    goto/16 :goto_0

    .line 84
    :cond_7
    cmp-long v0, v4, p2

    if-gtz v0, :cond_8

    move-wide v0, v4

    .line 85
    goto/16 :goto_0

    .line 89
    :cond_8
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_9

    const-string v0, "ActivityScheduler"

    const-string v1, "The batching data is not long enough. "

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/activity/w;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    invoke-virtual {p0}, Lcom/google/android/location/activity/w;->o()V

    goto :goto_3

    .line 93
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/activity/w;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/w;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/activity/k;->d(J)V

    goto :goto_3
.end method

.method protected final d()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/location/activity/w;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->l()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "FullAndOffBodyDetectorInPast"

    return-object v0
.end method

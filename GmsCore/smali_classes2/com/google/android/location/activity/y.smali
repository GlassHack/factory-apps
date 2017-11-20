.class Lcom/google/android/location/activity/y;
.super Lcom/google/android/location/activity/s;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;

.field protected c:Lcom/google/android/location/activity/aj;


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/s;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/y;->b:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/google/android/location/activity/aj;

    invoke-interface {p2}, Lcom/google/android/location/os/at;->y()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/aj;-><init>(Lcom/google/android/location/activity/k;Z)V

    iput-object v0, p0, Lcom/google/android/location/activity/y;->c:Lcom/google/android/location/activity/aj;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J
    .locals 8

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v2, -0x1

    .line 55
    invoke-virtual {p0}, Lcom/google/android/location/activity/y;->k()V

    .line 56
    iget-object v0, p0, Lcom/google/android/location/activity/y;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 57
    iget-boolean v0, p0, Lcom/google/android/location/activity/y;->a:Z

    if-eqz v0, :cond_0

    move-wide v0, v2

    .line 91
    :goto_0
    return-wide v0

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 63
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/y;->d:Lcom/google/android/location/activity/k;

    iget-object v4, p0, Lcom/google/android/location/activity/y;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/y;->a(Lcom/google/android/location/activity/bb;)V

    move-wide v0, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/y;->c:Lcom/google/android/location/activity/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/aj;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 68
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 70
    iget-object v7, p0, Lcom/google/android/location/activity/y;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v7, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/google/android/location/activity/y;->n()V

    move-wide v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_3
    cmp-long v0, v4, p2

    if-gtz v0, :cond_4

    move-wide v0, v4

    .line 81
    goto :goto_0

    .line 85
    :cond_4
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityScheduler"

    const-string v1, "The batching data is not long enough. "

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/activity/y;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    invoke-virtual {p0}, Lcom/google/android/location/activity/y;->o()V

    :goto_2
    move-wide v0, v2

    .line 91
    goto :goto_0

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/activity/y;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/y;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/activity/k;->d(J)V

    goto :goto_2
.end method

.method public final a(D)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/location/activity/y;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/activity/k;->a(D)V

    .line 40
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/android/location/activity/y;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/activity/y;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-super {p0, p1}, Lcom/google/android/location/activity/s;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_0
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/location/activity/y;->k_()V

    .line 108
    return-void
.end method

.method protected d()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/location/activity/y;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->k()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final e()J
    .locals 2

    .prologue
    .line 102
    const-wide v0, 0x9502f9000L

    return-wide v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "FullDetectorInPast"

    return-object v0
.end method

.method protected final k_()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/location/activity/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    invoke-super {p0}, Lcom/google/android/location/activity/s;->k_()V

    .line 35
    return-void
.end method

.method protected final q_()J
    .locals 2

    .prologue
    .line 122
    const-wide v0, 0x861c46800L

    return-wide v0
.end method

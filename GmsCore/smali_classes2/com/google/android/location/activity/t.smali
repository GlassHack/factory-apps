.class abstract Lcom/google/android/location/activity/t;
.super Lcom/google/android/location/activity/bb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/e;


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/bb;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/t;->a:Z

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 90
    iget-boolean v0, p0, Lcom/google/android/location/activity/t;->a:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 95
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    .line 97
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reporting tilting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/location/activity/t;->a:Z

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFatalError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/k;->a(Z)V

    .line 123
    :cond_2
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/t;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0
.end method

.method protected abstract b()Lcom/google/android/location/activity/d;
.end method

.method protected abstract d()Lcom/google/android/location/activity/a/o;
.end method

.method protected e()J
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->d()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/activity/a/o;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->k_()V

    .line 51
    return-void
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/location/activity/bb;->h()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/activity/t;->a:Z

    .line 57
    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->b()Lcom/google/android/location/activity/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/activity/d;->a()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->j_()V

    .line 59
    return-void
.end method

.method protected j_()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->a(J)V

    .line 67
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->b(J)V

    .line 68
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->c(J)V

    .line 69
    return-void
.end method

.method protected final k()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->z()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->z()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/location/activity/k;->z()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    return-void
.end method

.method protected k_()V
    .locals 10

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->d()Lcom/google/android/location/activity/a/o;

    move-result-object v8

    .line 73
    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->f()Ljava/lang/String;

    move-result-object v6

    .line 74
    iget-object v0, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->s()I

    move-result v7

    new-instance v1, Lcom/google/android/location/os/s;

    sget-object v3, Lcom/google/android/location/os/c;->U:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/os/s;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLjava/lang/String;I)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 75
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting activity detection at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with detector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->b()Lcom/google/android/location/activity/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/location/activity/k;->s()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->l()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/location/activity/t;->m()D

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v7}, Lcom/google/android/location/activity/k;->r()Lcom/google/android/location/p/j;

    move-result-object v9

    move-object v7, v8

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/location/activity/d;->a(IJIDLcom/google/android/location/activity/a/o;Lcom/google/android/location/activity/e;Lcom/google/android/location/p/j;)V

    .line 85
    return-void
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0xa

    return v0
.end method

.method public final l_()V
    .locals 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/android/location/activity/t;->a:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    const-string v1, "Insufficient samples"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/k;->a(Z)V

    .line 135
    :cond_2
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/t;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0
.end method

.method protected m()D
    .locals 2

    .prologue
    .line 151
    const-wide v0, 0x4041800000000000L    # 35.0

    return-wide v0
.end method

.method protected final n()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->i()Lcom/google/android/location/activity/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/activity/az;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/google/android/location/activity/ay;

    iget-object v1, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/ay;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/t;->a(Lcom/google/android/location/activity/bb;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/t;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0
.end method

.method protected final o()V
    .locals 6

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/google/android/location/activity/t;->e:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/location/activity/bv;->a(JJZ)J

    move-result-wide v0

    .line 172
    iget-object v2, p0, Lcom/google/android/location/activity/t;->d:Lcom/google/android/location/activity/k;

    const-wide/16 v4, 0x3e8

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/google/android/location/activity/k;->a(JJ)V

    .line 174
    return-void
.end method

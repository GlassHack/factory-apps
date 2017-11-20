.class public final Lcom/google/android/location/reporting/service/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field public b:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field public c:Lcom/google/android/location/reporting/x;

.field d:J

.field private e:J

.field private f:Landroid/location/Location;

.field private g:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private h:J

.field private i:Landroid/location/Location;

.field private j:J

.field private k:Lcom/google/android/gms/location/LocationStatus;

.field private l:Lcom/google/android/ulr/ApiRate;

.field private m:Lcom/google/android/location/reporting/config/ReportingConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/reporting/service/m;->e:J

    .line 74
    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/m;->a()V

    .line 75
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->f:Landroid/location/Location;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/reporting/service/m;->a:J

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->b:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/reporting/service/m;->h:J

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->i:Landroid/location/Location;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/reporting/service/m;->j:J

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->k:Lcom/google/android/gms/location/LocationStatus;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->l:Lcom/google/android/ulr/ApiRate;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->c:Lcom/google/android/location/reporting/x;

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/reporting/service/m;->d:J

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/service/m;->m:Lcom/google/android/location/reporting/config/ReportingConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/location/reporting/service/m;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/reporting/service/m;->i:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/location/Location;J)V
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/reporting/service/m;->f:Landroid/location/Location;

    .line 165
    iput-wide p2, p0, Lcom/google/android/location/reporting/service/m;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/reporting/service/m;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/location/LocationStatus;)V
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/reporting/service/m;->k:Lcom/google/android/gms/location/LocationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/location/reporting/config/ReportingConfig;)V
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/reporting/service/m;->m:Lcom/google/android/location/reporting/config/ReportingConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/ulr/ApiRate;Lcom/google/android/location/reporting/x;J)V
    .locals 1

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/reporting/service/m;->l:Lcom/google/android/ulr/ApiRate;

    .line 271
    iput-object p2, p0, Lcom/google/android/location/reporting/service/m;->c:Lcom/google/android/location/reporting/x;

    .line 272
    iput-wide p3, p0, Lcom/google/android/location/reporting/service/m;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()J
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/m;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/location/reporting/service/m;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/m;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/reporting/service/m;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->f:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->b:Lcom/google/android/gms/location/ActivityRecognitionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()J
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/m;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Landroid/location/Location;
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->i:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()J
    .locals 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/m;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/android/gms/location/LocationStatus;
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->k:Lcom/google/android/gms/location/LocationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Lcom/google/android/ulr/ApiRate;
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->l:Lcom/google/android/ulr/ApiRate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Lcom/google/android/location/reporting/config/ReportingConfig;
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->m:Lcom/google/android/location/reporting/config/ReportingConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->m:Lcom/google/android/location/reporting/config/ReportingConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->m:Lcom/google/android/location/reporting/config/ReportingConfig;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/ReportingConfig;->i()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->f:Landroid/location/Location;

    if-nez v0, :cond_1

    const-string v0, "null"

    move-object v3, v0

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;

    if-nez v0, :cond_2

    const-string v0, "null"

    move-object v2, v0

    .line 107
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->b:Lcom/google/android/gms/location/ActivityRecognitionResult;

    if-nez v0, :cond_3

    const-string v0, "null"

    move-object v1, v0

    .line 109
    :goto_3
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->i:Landroid/location/Location;

    if-nez v0, :cond_4

    const-string v0, "null"

    .line 111
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InternalState{numLocationsSinceStart="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/google/android/location/reporting/service/m;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastLocationRecorded.time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", lastLocationRecordedRealtime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/google/android/location/reporting/service/m;->a:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", lastActivityProcessedRealtime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentActivityProcessedRealtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastWifiAttachedRealtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/reporting/service/m;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastUploadAttemptRealtime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/reporting/service/m;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastUploadAttemptLocation.time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastLocationStatusRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/m;->k:Lcom/google/android/gms/location/LocationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/m;->l:Lcom/google/android/ulr/ApiRate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/m;->c:Lcom/google/android/location/reporting/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_0

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->f:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_2

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->b:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/service/m;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_4

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

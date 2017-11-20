.class final Lcom/google/android/gms/gcm/nts/n;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/nts/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/nts/m;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->i(Lcom/google/android/gms/gcm/nts/m;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 193
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/nts/k;

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/nts/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->i(Lcom/google/android/gms/gcm/nts/m;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/gcm/nts/a;

    .line 200
    iget-boolean v4, v1, Lcom/google/android/gms/gcm/nts/a;->e:Z

    if-nez v4, :cond_1

    .line 201
    const-string v4, "NetworkScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: Handling client callback for uncompleted task"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/nts/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v4, "INVALID_COMPLETE"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/gcm/nts/a;->a(Ljava/lang/String;)V

    .line 205
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move-object v1, v0

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->j(Lcom/google/android/gms/gcm/nts/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/nts/k;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/nts/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    :cond_3
    :goto_1
    return-void

    .line 215
    :cond_4
    if-nez v1, :cond_5

    .line 216
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Task completed but with no record in list of active tasks: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    :cond_5
    packed-switch p2, :pswitch_data_0

    .line 243
    :cond_6
    :goto_2
    if-eqz v2, :cond_3

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0, v2, v7}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/m;Lcom/google/android/gms/gcm/nts/k;Z)V

    goto :goto_1

    .line 222
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/gms/gcm/nts/r;->a(Lcom/google/android/gms/gcm/nts/k;I)V

    .line 224
    invoke-virtual {v1}, Lcom/google/android/gms/gcm/nts/k;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/k;)Lcom/google/android/gms/gcm/nts/k;

    move-result-object v2

    goto :goto_2

    .line 229
    :pswitch_1
    invoke-static {v1, v7}, Lcom/google/android/gms/gcm/nts/r;->a(Lcom/google/android/gms/gcm/nts/k;I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->b(Lcom/google/android/gms/gcm/nts/k;)Lcom/google/android/gms/gcm/nts/k;

    move-result-object v2

    goto :goto_2

    .line 234
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/google/android/gms/gcm/nts/r;->a(Lcom/google/android/gms/gcm/nts/k;I)V

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/gcm/nts/k;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/k;)Lcom/google/android/gms/gcm/nts/k;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/m;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Lcom/google/android/gms/gcm/nts/m;->d:Lcom/google/android/gms/common/a/b;

    invoke-static {v1}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v1

    mul-int/lit16 v3, v1, 0x3e8

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->i(Lcom/google/android/gms/gcm/nts/m;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->i(Lcom/google/android/gms/gcm/nts/m;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->i(Lcom/google/android/gms/gcm/nts/m;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/nts/k;

    iget-wide v8, v0, Lcom/google/android/gms/gcm/nts/k;->k:J

    int-to-long v10, v3

    sub-long v10, v4, v10

    cmp-long v1, v8, v10

    if-gtz v1, :cond_0

    const-string v1, "NetworkScheduler"

    const/4 v8, 0x3

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetworkScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Timeout: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->i(Lcom/google/android/gms/gcm/nts/m;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/gcm/nts/a;

    const-string v8, "TIMED_OUT"

    invoke-virtual {v1, v8}, Lcom/google/android/gms/gcm/nts/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/nts/r;->a(Lcom/google/android/gms/gcm/nts/k;I)V

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->b(Lcom/google/android/gms/gcm/nts/k;)Lcom/google/android/gms/gcm/nts/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    const/4 v8, 0x0

    invoke-static {v1, v0, v8}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/m;Lcom/google/android/gms/gcm/nts/k;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/m;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 133
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 134
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->f(Lcom/google/android/gms/gcm/nts/m;)J

    move-result-wide v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->f(Lcom/google/android/gms/gcm/nts/m;)J

    move-result-wide v0

    sget-object v4, Lcom/google/android/gms/gcm/nts/m;->e:Lcom/google/android/gms/common/a/b;

    invoke-static {v4}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 164
    const-string v4, "NetworkScheduler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    const-string v4, "NetworkScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Alarm going off in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v2, v0, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v2}, Lcom/google/android/gms/gcm/nts/m;->h(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v4}, Lcom/google/android/gms/gcm/nts/m;->g(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/m;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 174
    return-void

    .line 138
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->b(Lcom/google/android/gms/gcm/nts/m;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v4}, Lcom/google/android/gms/gcm/nts/m;->c(Lcom/google/android/gms/gcm/nts/m;)Lcom/google/android/gms/gcm/nts/e;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/m;Lcom/google/android/gms/gcm/nts/d;)V

    .line 140
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->d(Lcom/google/android/gms/gcm/nts/m;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->b(Lcom/google/android/gms/gcm/nts/m;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v4}, Lcom/google/android/gms/gcm/nts/m;->e(Lcom/google/android/gms/gcm/nts/m;)Lcom/google/android/gms/gcm/nts/g;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/nts/m;Lcom/google/android/gms/gcm/nts/d;)V

    .line 147
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->b(Lcom/google/android/gms/gcm/nts/m;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    :try_start_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gms/gcm/nts/n;->a(Ljava/lang/String;II)V

    .line 157
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1

    throw v0

    .line 168
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v2}, Lcom/google/android/gms/gcm/nts/m;->h(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v4}, Lcom/google/android/gms/gcm/nts/m;->g(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v0}, Lcom/google/android/gms/gcm/nts/m;->h(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/n;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-static {v1}, Lcom/google/android/gms/gcm/nts/m;->g(Lcom/google/android/gms/gcm/nts/m;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

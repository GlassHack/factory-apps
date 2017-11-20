.class final Lcom/google/android/location/geofencer/service/u;
.super Lcom/google/android/location/geofencer/service/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    .line 832
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/p;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 833
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    const-string v0, "NotInitializedState"

    return-object v0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 14

    .prologue
    const/4 v2, 0x1

    .line 838
    iget v1, p1, Landroid/os/Message;->what:I

    .line 839
    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    move v0, v2

    :goto_0
    const-string v3, "Received add or remove geofence request before initialized."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    .line 841
    packed-switch v1, :pswitch_data_0

    .line 871
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v3, v1}, Lcom/google/android/location/geofencer/service/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in NotInitializedState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-super {p0, p1}, Lcom/google/android/location/geofencer/service/p;->b(Landroid/os/Message;)Z

    move-result v2

    :goto_1
    return v2

    .line 839
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 843
    :pswitch_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    .line 844
    const-string v0, "GeofencerStateMachine"

    const-string v1, "Initializing GeofencerStateMachine."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_1
    iget-object v3, p0, Lcom/google/android/location/geofencer/service/u;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, v3, Lcom/google/android/location/geofencer/service/i;->e:Lcom/google/android/location/geofencer/service/h;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/h;->a()V

    iget-object v4, v3, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    iget-object v1, v3, Lcom/google/android/location/geofencer/service/i;->e:Lcom/google/android/location/geofencer/service/h;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/h;->b()Lcom/google/android/location/f/a;

    move-result-object v1

    iget-object v5, v4, Lcom/google/android/location/i/a;->i:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v6, Lcom/google/android/location/o/ae;

    new-instance v7, Ljava/io/File;

    iget-object v8, v4, Lcom/google/android/location/i/a;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/location/i/a;->f:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7, v1}, Lcom/google/android/location/o/ae;-><init>(Ljava/io/File;Lcom/google/android/location/f/a;)V

    iput-object v6, v4, Lcom/google/android/location/i/a;->j:Lcom/google/android/location/o/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v4, Lcom/google/android/location/i/a;->j:Lcom/google/android/location/o/ae;

    new-instance v6, Lcom/google/android/location/geofencer/b/c;

    invoke-direct {v6}, Lcom/google/android/location/geofencer/b/c;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/android/location/o/ae;->a(Lcom/google/protobuf/a/f;)Lcom/google/protobuf/a/f;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/geofencer/b/c;

    iget-wide v6, v1, Lcom/google/android/location/geofencer/b/c;->a:J

    iget-object v8, v4, Lcom/google/android/location/i/a;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v8}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v8

    iget-object v10, v4, Lcom/google/android/location/i/a;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v10}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sub-long v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/b/c;->c()I

    move-result v10

    if-nez v10, :cond_4

    :cond_2
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "ActivityDetector"

    const-string v4, "Boot time changed, not recovering activities."

    invoke-static {v1, v4}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v1, v3, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    iget-object v3, v3, Lcom/google/android/location/geofencer/service/i;->e:Lcom/google/android/location/geofencer/service/h;

    invoke-virtual {v3}, Lcom/google/android/location/geofencer/service/h;->b()Lcom/google/android/location/f/a;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/location/geofencer/data/h;->a(Landroid/content/Intent;Lcom/google/android/location/f/a;)V

    .line 854
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/u;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->g()V

    .line 855
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 856
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/u;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 860
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->l(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    .line 861
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->m(Lcom/google/android/location/geofencer/service/k;)V

    goto/16 :goto_1

    .line 853
    :cond_4
    :try_start_3
    sget-boolean v10, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v10, :cond_5

    const-string v10, "ActivityDetector"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "load: loaded "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/b/c;->c()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " activities."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v4, v4, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    invoke-virtual {v4, v1}, Lcom/google/android/location/i/d;->a(Lcom/google/android/location/geofencer/b/c;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :catch_0
    move-exception v1

    :try_start_5
    sget-boolean v4, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v4, :cond_6

    const-string v4, "ActivityDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to read activity state file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 863
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->n(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/service/k;->b(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    goto/16 :goto_1

    .line 866
    :cond_8
    const-string v0, "GeofencerStateMachine"

    const-string v1, "Network location disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/u;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->o(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/service/k;->c(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    goto/16 :goto_1

    .line 841
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

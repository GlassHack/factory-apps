.class public final Lcom/google/maps/api/android/lib6/gmm6/c/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/dm;)V
    .locals 10

    const-class v7, Lcom/google/maps/api/android/lib6/gmm6/c/i;

    monitor-enter v7

    :try_start_0
    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/c/i;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/c/i;->a:Z

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/a/c;

    invoke-direct {v5, p0}, Lcom/google/maps/api/android/lib6/gmm6/a/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v2, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/av;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    aput-object v1, v2, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->f:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    aput-object v1, v2, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->e:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    aput-object v1, v2, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->o:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    aput-object v1, v2, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/dm;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v6

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/g;->a()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/gms/maps/aa;->a:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->a(Landroid/content/Context;Landroid/content/res/Resources;[Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/lang/String;ILcom/google/maps/api/android/lib6/b/ad;Lcom/google/maps/api/android/lib6/b/h;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/y;->a()Lcom/google/g/a/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/d/g;->b()V

    const-string v0, "MapviewInitializerPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/j;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/j;-><init>()V

    new-instance v2, Lcom/google/maps/api/android/lib6/c/cu;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/maps/api/android/lib6/c/cu;-><init>(Lcom/google/maps/api/android/lib6/c/dm;Landroid/content/SharedPreferences;Lcom/google/maps/api/android/lib6/c/cv;)V

    invoke-virtual {v6, v2}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->b()Lcom/google/maps/api/android/lib6/gmm6/d/f;

    move-result-object v0

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/d/f;->a:I

    int-to-long v0, v0

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/c/cu;->c:Lcom/google/maps/api/android/lib6/c/dm;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/c/dm;->a(Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/c/cu;->a:Landroid/content/SharedPreferences;

    const-string v6, "LAST_FETCH_PERSISTENT_TAG"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v4, v8

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/c/cu;->b:Lcom/google/maps/api/android/lib6/c/cv;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/cv;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

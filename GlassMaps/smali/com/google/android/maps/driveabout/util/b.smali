.class public final Lcom/google/android/maps/driveabout/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 31
    const-class v2, Lcom/google/android/maps/driveabout/util/b;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/googlenav/datarequest/f;

    invoke-direct {v0}, Lcom/google/googlenav/datarequest/f;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/datarequest/f;->a(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/google/googlenav/common/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/datarequest/f;->b(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/datarequest/f;->c(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/google/googlenav/common/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/datarequest/f;->d(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/googlenav/datarequest/f;->a(Z)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/f;->b(Z)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    .line 41
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/f;->e(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/f;->a(I)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/googlenav/datarequest/f;->f(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/f;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 45
    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v2

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

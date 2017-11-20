.class public final Lcom/google/maps/api/android/lib6/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/dm;)Landroid/content/Context;
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-class v3, Lcom/google/maps/api/android/lib6/c/c;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/c/a/cj;->a(Z)V

    new-instance v2, Lcom/google/maps/api/android/lib6/c/f;

    invoke-direct {v2, p0, p0}, Lcom/google/maps/api/android/lib6/c/f;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    sput-object v2, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/google/maps/api/android/lib6/c/g;->b:Landroid/content/res/Resources;

    sget-object v2, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/ca;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/dm;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/b/h;->k()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/e;->s()Lcom/google/g/a/b/b/f;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/maps/api/android/lib6/b/h;Lcom/google/g/a/b/b/f;)V

    sget-object v5, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v2, v6

    if-lez v2, :cond_5

    array-length v7, v6

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    iget-object v9, v8, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v9, :cond_4

    iget v8, v8, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    const/high16 v9, 0x20000

    if-lt v8, v9, :cond_4

    move v2, v1

    :goto_2
    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/bq;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v0, v4, v1}, Lcom/google/maps/api/android/lib6/c/c;->a(Lcom/google/maps/api/android/lib6/c/dm;Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Z)V

    :goto_4
    sget-object v0, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lcom/google/maps/api/android/lib6/c/ce;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/maps/api/android/lib6/c/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ce;->c()V

    sget-object v0, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->d()Lcom/google/maps/api/android/lib6/gmm6/d/b;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/d/b;->a:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/maps/ab;->a:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    sget-object v0, Lcom/google/maps/api/android/lib6/c/c;->a:Landroid/content/Context;

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    const-string v1, "Google Play services is missing."

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_7
    :try_start_2
    const-string v1, "Google Maps Android API v2 only supports devices with OpenGL ES 2.0 and above"

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/b/h;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static a(Lcom/google/maps/api/android/lib6/c/dm;Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Z)V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->e()V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/d;

    invoke-direct {v0, p3, p0, p1}, Lcom/google/maps/api/android/lib6/c/d;-><init>(ZLcom/google/maps/api/android/lib6/c/dm;Landroid/content/Context;)V

    invoke-static {p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/Runnable;)V

    return-void
.end method

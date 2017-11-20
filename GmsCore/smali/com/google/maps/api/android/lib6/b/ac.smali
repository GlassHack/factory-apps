.class final Lcom/google/maps/api/android/lib6/b/ac;
.super Lcom/google/maps/api/android/lib6/b/v;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/b/z;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/b/z;[BZZ)V
    .locals 6

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/ac;->a:Lcom/google/maps/api/android/lib6/b/z;

    const/16 v1, 0x7d

    move-object v0, p0

    move-object v2, p2

    move v4, v3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/b/v;-><init>(I[BZZZ)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 4

    const-class v1, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->c()Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->e()Lcom/google/maps/api/android/lib6/b/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/ad;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->e()Lcom/google/maps/api/android/lib6/b/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/ad;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/ac;->a:Lcom/google/maps/api/android/lib6/b/z;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/b/z;->b(Lcom/google/maps/api/android/lib6/b/z;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/b/z;->a(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->e()Lcom/google/maps/api/android/lib6/b/ad;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/maps/api/android/lib6/b/ad;->a(Lcom/google/g/a/b/b/f;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/ac;->a:Lcom/google/maps/api/android/lib6/b/z;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/z;->b()V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/google/maps/api/android/lib6/b/z;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".uploadEventLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string v2, "USER_EVENTSUserEventReporter"

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/ac;->a:Lcom/google/maps/api/android/lib6/b/z;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/z;->b()V

    return-void
.end method

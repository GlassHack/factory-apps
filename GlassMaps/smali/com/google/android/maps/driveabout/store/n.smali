.class final Lcom/google/android/maps/driveabout/store/n;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/store/i;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 3

    .prologue
    .line 939
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/n;->a:Lcom/google/android/maps/driveabout/store/i;

    .line 940
    const-string v1, "CacheCommitter:"

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    .line 941
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/i;->d(Lcom/google/android/maps/driveabout/store/i;)I

    move-result v0

    if-gez v0, :cond_1

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->c:Z

    .line 946
    :goto_1
    return-void

    .line 940
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/n;->start()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 953
    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/n;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    .line 958
    if-nez v0, :cond_0

    .line 975
    :goto_1
    return-void

    .line 954
    :catch_0
    move-exception v0

    .line 955
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/n;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 963
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/n;->b:Z

    .line 965
    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/n;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/store/i;->d(Lcom/google/android/maps/driveabout/store/i;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/store/n;->sleep(J)V

    .line 966
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/n;->b:Z

    if-nez v1, :cond_0

    .line 967
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->c_()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->c:Z

    goto :goto_1

    .line 971
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method final b()V
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->b:Z

    .line 979
    return-void
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/n;->c:Z

    return v0
.end method

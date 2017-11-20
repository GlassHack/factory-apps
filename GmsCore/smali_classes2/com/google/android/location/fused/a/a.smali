.class public final Lcom/google/android/location/fused/a/a;
.super Lcom/google/android/location/fused/a/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/fused/a/j;-><init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    .line 20
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/google/android/location/fused/a/a;->c:Lcom/google/android/location/fused/bd;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    iget-boolean v4, p0, Lcom/google/android/location/fused/a/h;->g:Z

    iget-object v7, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/android/location/fused/bd;->a(I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "fused.NlpController:2"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/internal/h;->a(JZLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    invoke-static {v7}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    iget-object v0, v0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GCoreFlp"

    const-string v1, "Unable to bind to GMS NLP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    const-string v0, "GCoreFlp"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    const-string v0, "Activity recognition enabled with interval %s[ms]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/a/a;->c:Lcom/google/android/location/fused/bd;

    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/android/location/fused/bd;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/internal/h;->a(Landroid/app/PendingIntent;)Lcom/google/android/location/internal/h;

    iget-object v0, v0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "GCoreFlp"

    const-string v1, "Unable to start the GMS NLP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 27
    :cond_3
    const-string v0, "GCoreFlp"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const-string v0, "Activity recognition disabled"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity recognition ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/a;->a(Ljava/lang/StringBuilder;)V

    .line 37
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

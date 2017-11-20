.class public final Lcom/google/android/location/fused/a/i;
.super Lcom/google/android/location/fused/a/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;Lcom/google/android/location/fused/bf;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/fused/a/j;-><init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;Lcom/google/android/location/fused/bf;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 23
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/google/android/location/fused/a/i;->b:Lcom/google/android/location/fused/ac;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/fused/ac;->c(J)V

    .line 25
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/h;->g:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/location/fused/a/i;->d:Lcom/google/android/location/fused/bf;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bf;->a()V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/a/i;->c:Lcom/google/android/location/fused/bd;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    iget-boolean v1, p0, Lcom/google/android/location/fused/a/j;->a:Z

    iget-boolean v4, p0, Lcom/google/android/location/fused/a/h;->g:Z

    iget-object v5, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    new-instance v6, Lcom/google/android/location/internal/h;

    invoke-direct {v6}, Lcom/google/android/location/internal/h;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/android/location/fused/bd;->a(I)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v8, "fused.NlpController:1"

    invoke-virtual {v6, v2, v3, v7, v8}, Lcom/google/android/location/internal/h;->a(JLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    invoke-virtual {v6, v1}, Lcom/google/android/location/internal/h;->a(Z)Lcom/google/android/location/internal/h;

    invoke-virtual {v6, v4}, Lcom/google/android/location/internal/h;->b(Z)Lcom/google/android/location/internal/h;

    invoke-static {v5}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    iget-object v1, v6, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v2, "com.google.android.location.internal.EXTRA_LOCATION_LOW_POWER"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GCoreFlp"

    const-string v1, "Unable to bind to GMS NLP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_1
    const-string v0, "GCoreFlp"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    const-string v0, "Nlp low power enabled with interval %s[ms]"

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_2
    :goto_0
    return-void

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/fused/a/i;->b:Lcom/google/android/location/fused/ac;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ac;->g()V

    .line 38
    iget-object v0, p0, Lcom/google/android/location/fused/a/i;->c:Lcom/google/android/location/fused/bd;

    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/android/location/fused/bd;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/internal/h;->b(Landroid/app/PendingIntent;)Lcom/google/android/location/internal/h;

    iget-object v0, v0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "GCoreFlp"

    const-string v1, "Unable to start the GMS NLP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 39
    :cond_4
    const-string v0, "GCoreFlp"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const-string v0, "NLP low power Disabled"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network location (low power) ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/i;->a(Ljava/lang/StringBuilder;)V

    .line 49
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

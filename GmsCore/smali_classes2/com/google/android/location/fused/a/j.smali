.class public Lcom/google/android/location/fused/a/j;
.super Lcom/google/android/location/fused/a/h;
.source "SourceFile"


# instance fields
.field a:Z

.field protected final b:Lcom/google/android/location/fused/ac;

.field protected final c:Lcom/google/android/location/fused/bd;

.field protected final d:Lcom/google/android/location/fused/bf;


# direct methods
.method protected constructor <init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/fused/a/j;-><init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;Lcom/google/android/location/fused/bf;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;Lcom/google/android/location/fused/bf;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/location/fused/a/h;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/j;->a:Z

    .line 27
    iput-object p1, p0, Lcom/google/android/location/fused/a/j;->c:Lcom/google/android/location/fused/bd;

    .line 28
    iput-object p3, p0, Lcom/google/android/location/fused/a/j;->d:Lcom/google/android/location/fused/bf;

    .line 29
    iput-object p2, p0, Lcom/google/android/location/fused/a/j;->b:Lcom/google/android/location/fused/ac;

    .line 30
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 38
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/google/android/location/fused/a/j;->b:Lcom/google/android/location/fused/ac;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/fused/ac;->b(J)V

    .line 40
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/h;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/a/j;->d:Lcom/google/android/location/fused/bf;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/location/fused/a/j;->d:Lcom/google/android/location/fused/bf;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bf;->a()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/a/j;->c:Lcom/google/android/location/fused/bd;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    iget-boolean v1, p0, Lcom/google/android/location/fused/a/j;->a:Z

    iget-boolean v4, p0, Lcom/google/android/location/fused/a/h;->g:Z

    iget-object v5, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    new-instance v6, Lcom/google/android/location/internal/h;

    invoke-direct {v6}, Lcom/google/android/location/internal/h;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/android/location/fused/bd;->a(I)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v8, "fused.NlpController:0"

    invoke-virtual {v6, v2, v3, v7, v8}, Lcom/google/android/location/internal/h;->a(JLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    invoke-virtual {v6, v1}, Lcom/google/android/location/internal/h;->a(Z)Lcom/google/android/location/internal/h;

    invoke-virtual {v6, v4}, Lcom/google/android/location/internal/h;->b(Z)Lcom/google/android/location/internal/h;

    invoke-static {v5}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    iget-object v0, v0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GCoreFlp"

    const-string v1, "Unable to bind to GMS NLP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    const-string v0, "GCoreFlp"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    const-string v0, "Nlp enabled with interval %s[ms]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/fused/a/j;->b:Lcom/google/android/location/fused/ac;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ac;->f()V

    .line 53
    iget-object v0, p0, Lcom/google/android/location/fused/a/j;->c:Lcom/google/android/location/fused/bd;

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

    .line 54
    :cond_4
    const-string v0, "GCoreFlp"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "NLP Disabled"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/google/android/location/fused/a/h;->a(Ljava/lang/StringBuilder;)V

    .line 104
    const-string v0, ", debug info="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/fused/a/j;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eq v0, p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/location/fused/a/j;->b:Lcom/google/android/location/fused/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/ac;->a(Z)V

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/location/fused/a/h;->a(Z)V

    .line 93
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/j;->a:Z

    if-eq v0, v1, :cond_0

    .line 66
    iput-boolean v1, p0, Lcom/google/android/location/fused/a/j;->a:Z

    .line 67
    iput-boolean v1, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 69
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 76
    invoke-virtual {p0}, Lcom/google/android/location/fused/a/j;->g()V

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network location (full power) ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/j;->a(Ljava/lang/StringBuilder;)V

    .line 111
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

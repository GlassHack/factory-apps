.class public abstract Lcom/google/android/location/fused/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field h:Z

.field public i:Z

.field j:Ljava/util/Collection;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/l;->h:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/fused/a/l;->a:J

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    .line 24
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/l;->k:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 132
    const-string v0, "requested="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/fused/a/l;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    const-string v0, ", enabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/fused/a/l;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    const-string v0, ", request elapsed realtime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/fused/a/l;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, ", clients="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    :cond_1
    iput-object p1, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 108
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eq v0, p1, :cond_0

    .line 80
    iput-boolean p1, p0, Lcom/google/android/location/fused/a/l;->i:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 83
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 31
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-nez v0, :cond_0

    .line 32
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/l;->h:Z

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/a/l;->a:J

    .line 34
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/fused/a/l;->g()V

    .line 38
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    .line 46
    invoke-virtual {p0}, Lcom/google/android/location/fused/a/l;->a()V

    .line 48
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 56
    invoke-virtual {p0}, Lcom/google/android/location/fused/a/l;->a()V

    .line 58
    :cond_0
    return-void
.end method

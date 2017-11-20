.class final Lcom/google/android/location/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field final b:Lcom/google/android/location/os/at;

.field c:J

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/a;->a:Z

    .line 17
    const-class v0, Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/a;->d:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/google/android/location/activity/a;->b:Lcom/google/android/location/os/at;

    .line 28
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/location/os/at;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/activity/a;->e:Z

    .line 29
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supportAccelSensorBatching="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/location/activity/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/location/activity/a;->a:Z

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/a;->b:Lcom/google/android/location/os/at;

    iget-object v1, p0, Lcom/google/android/location/activity/a;->d:Ljava/lang/String;

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/a;->a:Z

    .line 61
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "Sensor batching is off"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 4

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/location/activity/a;->a:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/activity/a;->e:Z

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/a;->b:Lcom/google/android/location/os/at;

    iget-object v1, p0, Lcom/google/android/location/activity/a;->d:Ljava/lang/String;

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    const-string v3, "ActivityScheduler"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/activity/a;->a:Z

    .line 45
    iget-boolean v0, p0, Lcom/google/android/location/activity/a;->a:Z

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/google/android/location/activity/a;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/a;->c:J

    .line 47
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityScheduler"

    const-string v1, "Sensor batching is on"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/activity/a;->a:Z

    goto :goto_0
.end method

.class public final Lcom/google/android/gms/fitness/sensors/activity/b;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/sensors/activity/a;

.field private final b:Lcom/google/android/gms/fitness/sensors/e/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/activity/a;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/e/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->b:Lcom/google/android/gms/fitness/sensors/e/i;

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/activity/b;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->b:Lcom/google/android/gms/fitness/sensors/e/i;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/e/h;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/sensors/e/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/sensors/e/h;->a(JJ)Lcom/google/android/gms/fitness/sensors/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/sensors/e/h;->a()Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/sensors/e/g;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/activity/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/activity/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    const-string v2, "Unregistering Activity Recognition for %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->b:Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/data/o;)Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/sensors/activity/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v2, "Couldn\'t find registration for listener %s.  Found %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->b:Lcom/google/android/gms/fitness/sensors/e/i;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/activity/b;->a:Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/sensors/activity/a;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

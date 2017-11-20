.class public final Lcom/google/android/gms/fitness/sensors/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/a;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 84
    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/fitness/sensors/a;->a()V

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 105
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/sensors/a;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 62
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 52
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 95
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 73
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 77
    :cond_1
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    const-string v0, "CompositeSensorAdapter{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/b/b;->a:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

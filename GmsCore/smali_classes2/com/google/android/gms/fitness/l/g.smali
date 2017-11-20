.class public final Lcom/google/android/gms/fitness/l/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Lcom/google/android/gms/fitness/sensors/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/a;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/g;->b:Lcom/google/android/gms/fitness/sensors/a;

    .line 26
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 103
    iget-object v2, p0, Lcom/google/android/gms/fitness/l/g;->b:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v2, v0}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, "Could not unregister %s with sensor adapter %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/google/android/gms/fitness/l/g;->b:Lcom/google/android/gms/fitness/sensors/a;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    if-nez v0, :cond_0

    .line 44
    const-string v0, "No underlying listener found for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 47
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/fitness/data/o;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 64
    const-string v0, "Unregistering all underlying listeners for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/l/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/l/g;->a(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public final b(Ljava/lang/Object;Lcom/google/android/gms/fitness/data/o;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "Unregistering underlying listener: %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 56
    new-array v0, v4, [Lcom/google/android/gms/fitness/data/o;

    aput-object p2, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/l/g;->a(Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "No underlying listeners found for: %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Underlying listener %s not found in %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Error removing the underlying listener: %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All underlying listeners removed. Removing the map entry."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/l/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

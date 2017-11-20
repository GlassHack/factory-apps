.class final Lcom/google/android/gms/fitness/service/av;
.super Lcom/google/android/gms/fitness/h/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/d/c;

.field final synthetic b:Lcom/google/android/gms/fitness/data/o;

.field final synthetic c:Lcom/google/android/gms/fitness/service/au;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/au;Lcom/google/android/gms/fitness/d/c;Lcom/google/android/gms/fitness/data/o;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/av;->c:Lcom/google/android/gms/fitness/service/au;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/av;->a:Lcom/google/android/gms/fitness/d/c;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/av;->b:Lcom/google/android/gms/fitness/data/o;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/av;->c:Lcom/google/android/gms/fitness/service/au;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/av;->a:Lcom/google/android/gms/fitness/d/c;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/av;->b:Lcom/google/android/gms/fitness/data/o;

    const-string v3, "Adding registration for :%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, v1, Lcom/google/android/gms/fitness/d/c;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/au;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/sensors/e/h;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/sensors/e/h;-><init>()V

    iput-object v2, v3, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    iget-object v1, v1, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    iput-object v1, v3, Lcom/google/android/gms/fitness/sensors/e/h;->c:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/sensors/e/h;->a()Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v0, "Successfully added recording listener for %s"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/av;->a:Lcom/google/android/gms/fitness/d/c;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 85
    const-string v0, "Failed to add recording listener for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/av;->a:Lcom/google/android/gms/fitness/d/c;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    return-void
.end method

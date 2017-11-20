.class final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/a$b;,
        Lcom/google/android/gms/common/api/a$c;,
        Lcom/google/android/gms/common/api/a$a;
    }
.end annotation


# instance fields
.field private final wJ:Lcom/google/android/gms/common/api/a$a;

.field private final wQ:Landroid/os/Looper;

.field private final xb:Ljava/util/concurrent/locks/Lock;

.field private final xc:Ljava/util/concurrent/locks/Condition;

.field private final xd:Lcom/google/android/gms/common/internal/d;

.field private final xe:I

.field final xf:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/a$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private xg:Lcom/google/android/gms/common/ConnectionResult;

.field private xh:I

.field private volatile xi:I

.field private volatile xj:I

.field private xk:Z

.field private xl:I

.field private xm:J

.field final xn:Landroid/os/Handler;

.field private final xo:Landroid/os/Bundle;

.field private final xp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">;"
        }
    .end annotation
.end field

.field private final xq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xr:Z

.field private final xs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/b",
            "<*>;>;"
        }
    .end annotation
.end field

.field final xt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/a$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final xu:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final xv:Lcom/google/android/gms/common/internal/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xc:Ljava/util/concurrent/locks/Condition;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xf:Ljava/util/Queue;

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/common/api/a;->xi:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/a;->xk:Z

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/google/android/gms/common/api/a;->xm:J

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xo:Landroid/os/Bundle;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xp:Ljava/util/Map;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xs:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xt:Ljava/util/Set;

    new-instance v1, Lcom/google/android/gms/common/api/a$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/a$1;-><init>(Lcom/google/android/gms/common/api/a;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->wJ:Lcom/google/android/gms/common/api/a$a;

    new-instance v1, Lcom/google/android/gms/common/api/a$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/a$2;-><init>(Lcom/google/android/gms/common/api/a;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xu:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v1, Lcom/google/android/gms/common/api/a$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/a$3;-><init>(Lcom/google/android/gms/common/api/a;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xv:Lcom/google/android/gms/common/internal/d$b;

    new-instance v1, Lcom/google/android/gms/common/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a;->xv:Lcom/google/android/gms/common/internal/d$b;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$b;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a;->wQ:Landroid/os/Looper;

    new-instance v1, Lcom/google/android/gms/common/api/a$b;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/common/api/a$b;-><init>(Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xn:Landroid/os/Handler;

    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/gms/common/api/a;->xe:I

    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/internal/d;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/internal/d;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->cd()Lcom/google/android/gms/common/api/Api$b;

    move-result-object v1

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v9, p0, Lcom/google/android/gms/common/api/a;->xp:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->cf()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v10

    iget-object v6, p0, Lcom/google/android/gms/common/api/a;->xu:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v7, Lcom/google/android/gms/common/api/a$4;

    invoke-direct {v7, p0, v1}, Lcom/google/android/gms/common/api/a$4;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/Api$b;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v1

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getScopes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/a;->xq:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private static a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/a$c",
            "<TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$c;->cf()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xt:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->wJ:Lcom/google/android/gms/common/api/a$a;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$c;->a(Lcom/google/android/gms/common/api/a$a;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cp()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$c;->i(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$c;->cf()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$c;->b(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a;->aH(I)V

    return-void
.end method

.method private aH(I)V
    .locals 5

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/a;->xi:I

    if-eq v0, v1, :cond_b

    if-ne p1, v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$c;->ck()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$c;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$c;->cancel()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xt:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->clear()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xk:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-void

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/a;->xi:I

    if-eqz v0, :cond_7

    if-ne p1, v4, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xc:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xr:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->disconnect()V

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xr:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/a;->xi:I

    if-eqz v1, :cond_b

    if-eq p1, v4, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->aZ(I)V

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xr:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/a;->xi:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/a;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/a;->xj:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/a;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/a;->xh:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/a;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xo:Landroid/os/Bundle;

    return-object v0
.end method

.method private cn()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/common/api/a;->xl:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/a;->xl:I

    iget v0, p0, Lcom/google/android/gms/common/api/a;->xl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/a;->xk:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a;->aH(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xn:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xn:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/a;->xm:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/gms/common/api/a;->xr:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/d;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/a;->xi:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cq()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xc:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->co()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xk:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/a;->xk:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a;->aH(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xo:Landroid/os/Bundle;

    goto :goto_2
.end method

.method private co()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xf:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/a$c;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "GoogleApiClientImpl"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private cp()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/a;->xj:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/common/api/a;->xj:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xn:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cn()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cp()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/a;->xm:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xr:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/a;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/a;->xj:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/a;->xj:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/a;->xh:I

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/BaseImplementation$a",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$a;->a(Lcom/google/android/gms/common/api/BaseImplementation$CallbackHandler;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xf:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/BaseImplementation$a",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->co()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a;->a(Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/a;->aH(I)V

    goto :goto_1
.end method

.method public b(Ljava/lang/Object;)Lcom/google/android/gms/common/api/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/b",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->wQ:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->connect()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xc:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->vS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/a;->xc:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->vS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_4
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public connect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xk:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a;->xr:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->xg:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/a;->xi:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/a;->xl:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xb:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;->cq()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a;->aH(I)V

    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->wQ:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/a;->xi:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/a;->xi:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "lifecycleActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/api/a;->xe:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/c;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/a;->xe:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->aJ(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->xd:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/d;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

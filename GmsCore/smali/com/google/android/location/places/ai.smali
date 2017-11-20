.class public final Lcom/google/android/location/places/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/location/places/p;

.field public final c:Lcom/google/android/location/places/ax;

.field public final d:Lcom/google/android/location/places/b;

.field final e:Lcom/google/android/location/places/x;

.field public final f:Lcom/google/android/location/places/c/h;

.field public final g:Lcom/google/android/location/places/d/b;

.field public final h:Lcom/google/android/location/places/ae;

.field public final i:Lcom/google/android/location/places/n;

.field public final j:Lcom/google/android/location/places/b/a;

.field public final k:Lcom/google/android/location/places/c/b;

.field public final l:Ljava/util/List;

.field private final m:Landroid/os/HandlerThread;

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Lcom/google/android/location/places/an;

.field private final p:Lcom/google/android/location/o/af;

.field private final q:Lcom/google/android/location/places/d/h;

.field private final r:Lcom/google/android/location/fused/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/fused/g;Lcom/google/android/location/geofencer/service/g;)V
    .locals 12

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Places"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->m:Landroid/os/HandlerThread;

    .line 120
    iput-object p1, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/google/android/location/places/al;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/location/places/al;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->n:Ljava/util/concurrent/Executor;

    .line 122
    iget-object v0, p0, Lcom/google/android/location/places/ai;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/google/android/location/places/an;

    iget-object v1, p0, Lcom/google/android/location/places/ai;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/location/places/an;-><init>(Landroid/os/Looper;Lcom/google/android/location/places/ai;)V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->o:Lcom/google/android/location/places/an;

    .line 124
    new-instance v0, Lcom/google/android/location/places/p;

    invoke-direct {v0}, Lcom/google/android/location/places/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->b:Lcom/google/android/location/places/p;

    .line 125
    new-instance v0, Lcom/google/android/location/places/ax;

    invoke-direct {v0}, Lcom/google/android/location/places/ax;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->c:Lcom/google/android/location/places/ax;

    .line 127
    new-instance v0, Lcom/google/android/location/o/af;

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/o/af;-><init>(Lcom/google/android/gms/common/util/i;)V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->p:Lcom/google/android/location/o/af;

    .line 128
    iget-object v1, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/places/ai;->o:Lcom/google/android/location/places/an;

    iget-object v3, p0, Lcom/google/android/location/places/ai;->b:Lcom/google/android/location/places/p;

    iget-object v4, p0, Lcom/google/android/location/places/ai;->c:Lcom/google/android/location/places/ax;

    iget-object v5, p0, Lcom/google/android/location/places/ai;->p:Lcom/google/android/location/o/af;

    new-instance v0, Lcom/google/android/location/places/b;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/location/d/j;->a(Landroid/content/Context;)Lcom/google/android/location/d/j;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/places/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/location/places/p;Lcom/google/android/location/places/ax;Lcom/google/android/location/o/af;Lcom/google/android/location/d/j;)V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    .line 131
    iget-object v2, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    iget-object v4, p0, Lcom/google/android/location/places/ai;->n:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/location/places/be;

    invoke-direct {v5, v3}, Lcom/google/android/location/places/be;-><init>(Lcom/google/android/location/places/b;)V

    sget-object v0, Lcom/google/android/location/x;->Q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v8, Lcom/google/android/location/os/real/ap;

    invoke-direct {v8}, Lcom/google/android/location/os/real/ap;-><init>()V

    const-class v0, Lcom/google/android/location/places/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/location/x;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/location/places/bg;->a(Landroid/content/Context;)Lcom/google/android/location/places/bg;

    move-result-object v0

    :goto_0
    const-string v1, "Places"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Places"

    const-string v9, "Creating ReverseGeocodingPlaceInferenceModule"

    invoke-static {v1, v9}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/google/android/location/places/bk;

    invoke-direct {v1, v5, v8, v0}, Lcom/google/android/location/places/bk;-><init>(Lcom/google/android/location/places/at;Lcom/google/android/location/k/b;Lcom/google/android/location/places/bs;)V

    move-object v0, v1

    :goto_1
    const-class v1, Lcom/google/android/location/places/bp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Places"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Places"

    const-string v5, "Creating WifiDecisionTreePlaceInferenceModule"

    invoke-static {v1, v5}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/google/android/location/places/ap;

    invoke-direct {v1, v2, v3, v8}, Lcom/google/android/location/places/ap;-><init>(Landroid/content/Context;Lcom/google/android/location/places/b;Lcom/google/android/location/k/b;)V

    new-instance v7, Lcom/google/android/location/places/bp;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v7, v4, v2, v1}, Lcom/google/android/location/places/bp;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/location/h/s;)V

    :cond_2
    new-instance v1, Lcom/google/android/location/places/x;

    invoke-direct {v1, v7, v0}, Lcom/google/android/location/places/x;-><init>(Lcom/google/android/location/places/bp;Lcom/google/android/location/places/bk;)V

    iput-object v1, p0, Lcom/google/android/location/places/ai;->e:Lcom/google/android/location/places/x;

    .line 134
    iput-object p2, p0, Lcom/google/android/location/places/ai;->r:Lcom/google/android/location/fused/g;

    .line 136
    sget-object v0, Lcom/google/android/location/x;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ai;->l:Ljava/util/List;

    .line 139
    new-instance v0, Lcom/google/android/location/places/c/j;

    iget-object v1, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/location/places/c/j;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v1, Lcom/google/android/location/places/c/i;

    iget-object v2, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/location/places/c/i;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v2, Lcom/google/android/location/places/c/h;

    iget-object v3, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/location/places/c/h;-><init>(Landroid/content/Context;Lcom/google/android/location/places/c/i;Lcom/google/android/location/places/c/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/ai;->f:Lcom/google/android/location/places/c/h;

    .line 144
    new-instance v5, Lcom/google/android/location/places/d/g;

    invoke-direct {v5}, Lcom/google/android/location/places/d/g;-><init>()V

    .line 146
    new-instance v0, Lcom/google/android/location/places/b/m;

    iget-object v1, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/places/ai;->r:Lcom/google/android/location/fused/g;

    new-instance v3, Lcom/google/android/location/geofencer/service/ah;

    invoke-direct {v3}, Lcom/google/android/location/geofencer/service/ah;-><init>()V

    invoke-direct {v0, v1, p3, v2}, Lcom/google/android/location/places/b/m;-><init>(Landroid/content/Context;Lcom/google/android/location/geofencer/service/g;Lcom/google/android/location/fused/g;)V

    .line 151
    new-instance v1, Lcom/google/android/location/places/b/a;

    invoke-direct {v1, v0}, Lcom/google/android/location/places/b/a;-><init>(Lcom/google/android/location/places/b/m;)V

    iput-object v1, p0, Lcom/google/android/location/places/ai;->j:Lcom/google/android/location/places/b/a;

    .line 153
    iget-object v0, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 155
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 156
    new-instance v1, Lcom/google/android/location/places/c/b;

    iget-object v2, p0, Lcom/google/android/location/places/ai;->n:Ljava/util/concurrent/Executor;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/places/c/b;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/android/location/places/ai;->k:Lcom/google/android/location/places/c/b;

    .line 158
    new-instance v0, Lcom/google/android/location/places/d/b;

    iget-object v1, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/places/ai;->f:Lcom/google/android/location/places/c/h;

    new-instance v3, Lcom/google/android/location/places/bo;

    invoke-direct {v3}, Lcom/google/android/location/places/bo;-><init>()V

    iget-object v4, p0, Lcom/google/android/location/places/ai;->k:Lcom/google/android/location/places/c/b;

    iget-object v6, p0, Lcom/google/android/location/places/ai;->r:Lcom/google/android/location/fused/g;

    iget-object v7, p0, Lcom/google/android/location/places/ai;->j:Lcom/google/android/location/places/b/a;

    new-instance v9, Lcom/google/android/location/geofencer/service/ah;

    invoke-direct {v9}, Lcom/google/android/location/geofencer/service/ah;-><init>()V

    iget-object v10, p0, Lcom/google/android/location/places/ai;->a:Landroid/content/Context;

    invoke-static {v10}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/location/places/d/b;-><init>(Landroid/content/Context;Lcom/google/android/location/places/c/h;Lcom/google/android/location/places/bo;Lcom/google/android/location/places/c/b;Lcom/google/android/location/places/d/g;Lcom/google/android/location/fused/g;Lcom/google/android/location/places/b/a;Landroid/app/AlarmManager;Lcom/google/android/location/geofencer/service/ah;Landroid/support/v4/a/i;Lcom/google/android/gms/common/util/i;)V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->g:Lcom/google/android/location/places/d/b;

    .line 170
    sget-object v0, Lcom/google/android/location/x;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-static {v0}, Lcom/google/android/location/places/d/h;->a(Ljava/lang/String;)Lcom/google/android/location/places/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ai;->q:Lcom/google/android/location/places/d/h;

    .line 172
    new-instance v11, Lcom/google/android/location/places/b/d;

    new-instance v0, Lcom/google/android/location/places/bo;

    invoke-direct {v0}, Lcom/google/android/location/places/bo;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/places/ai;->r:Lcom/google/android/location/fused/g;

    iget-object v2, p0, Lcom/google/android/location/places/ai;->j:Lcom/google/android/location/places/b/a;

    iget-object v3, p0, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/google/android/location/places/b/d;-><init>(Lcom/google/android/location/places/bo;Lcom/google/android/location/fused/g;Lcom/google/android/location/places/b/a;Lcom/google/android/location/places/b;)V

    .line 178
    new-instance v6, Lcom/google/android/location/places/ab;

    invoke-direct {v6, p1}, Lcom/google/android/location/places/ab;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Lcom/google/android/location/places/ae;

    iget-object v2, p0, Lcom/google/android/location/places/ai;->o:Lcom/google/android/location/places/an;

    new-instance v3, Lcom/google/android/location/places/bm;

    const/4 v1, 0x3

    invoke-direct {v3, p1, v1}, Lcom/google/android/location/places/bm;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/google/android/location/places/ai;->r:Lcom/google/android/location/fused/g;

    iget-object v5, p0, Lcom/google/android/location/places/ai;->e:Lcom/google/android/location/places/x;

    iget-object v7, p0, Lcom/google/android/location/places/ai;->g:Lcom/google/android/location/places/d/b;

    iget-object v8, p0, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/places/ae;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/location/places/bm;Lcom/google/android/location/fused/g;Lcom/google/android/location/places/x;Lcom/google/android/location/places/ab;Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/b;)V

    iput-object v0, p0, Lcom/google/android/location/places/ai;->h:Lcom/google/android/location/places/ae;

    .line 190
    new-instance v2, Lcom/google/android/location/places/n;

    iget-object v4, p0, Lcom/google/android/location/places/ai;->o:Lcom/google/android/location/places/an;

    new-instance v5, Lcom/google/android/location/places/bm;

    const/4 v0, 0x5

    invoke-direct {v5, p1, v0}, Lcom/google/android/location/places/bm;-><init>(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/google/android/location/places/ai;->g:Lcom/google/android/location/places/d/b;

    iget-object v9, p0, Lcom/google/android/location/places/ai;->j:Lcom/google/android/location/places/b/a;

    iget-object v10, p0, Lcom/google/android/location/places/ai;->d:Lcom/google/android/location/places/b;

    move-object v3, p1

    move-object v8, v11

    invoke-direct/range {v2 .. v10}, Lcom/google/android/location/places/n;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/location/places/bm;Lcom/google/android/location/places/ab;Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/b/a;Lcom/google/android/location/places/b;)V

    iput-object v2, p0, Lcom/google/android/location/places/ai;->i:Lcom/google/android/location/places/n;

    .line 200
    return-void

    :cond_3
    move-object v0, v7

    goto/16 :goto_0

    :cond_4
    move-object v0, v7

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 441
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    .line 442
    iget-object v2, p0, Lcom/google/android/location/places/ai;->q:Lcom/google/android/location/places/d/h;

    iget-object v2, v2, Lcom/google/android/location/places/d/h;->a:Lcom/google/c/c/ci;

    invoke-interface {v2, p1}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/google/android/location/places/d/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%s cannot access user data type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/UserDataType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - contact android-places-team@google.com."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/location/places/d/i;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_1
    return-void
.end method

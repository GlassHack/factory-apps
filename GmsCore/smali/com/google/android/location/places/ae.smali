.class public final Lcom/google/android/location/places/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lcom/google/android/location/places/b;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public final e:Lcom/google/android/location/places/bm;

.field final f:Lcom/google/android/location/places/w;

.field private final g:Lcom/google/android/location/fused/g;

.field private final h:Lcom/google/android/location/places/x;

.field private final i:Lcom/google/android/location/places/ab;

.field private final j:Landroid/content/pm/PackageManager;

.field private final k:Lcom/google/android/location/places/d/b;

.field private final l:Lcom/google/android/location/o/ab;

.field private final m:Lcom/google/android/gms/location/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/location/places/bm;Lcom/google/android/location/fused/g;Lcom/google/android/location/places/x;Lcom/google/android/location/places/ab;Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/b;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/ae;->c:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ae;->d:Z

    .line 325
    new-instance v0, Lcom/google/android/location/places/af;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/af;-><init>(Lcom/google/android/location/places/ae;)V

    iput-object v0, p0, Lcom/google/android/location/places/ae;->m:Lcom/google/android/gms/location/i;

    .line 342
    new-instance v0, Lcom/google/android/location/places/ag;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/ag;-><init>(Lcom/google/android/location/places/ae;)V

    iput-object v0, p0, Lcom/google/android/location/places/ae;->f:Lcom/google/android/location/places/w;

    .line 90
    iput-object p2, p0, Lcom/google/android/location/places/ae;->a:Landroid/os/Handler;

    .line 91
    iput-object p3, p0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    .line 92
    iput-object p4, p0, Lcom/google/android/location/places/ae;->g:Lcom/google/android/location/fused/g;

    .line 93
    iput-object p5, p0, Lcom/google/android/location/places/ae;->h:Lcom/google/android/location/places/x;

    .line 94
    iput-object p6, p0, Lcom/google/android/location/places/ae;->i:Lcom/google/android/location/places/ab;

    .line 95
    iput-object p7, p0, Lcom/google/android/location/places/ae;->k:Lcom/google/android/location/places/d/b;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ae;->j:Landroid/content/pm/PackageManager;

    .line 97
    iput-object p8, p0, Lcom/google/android/location/places/ae;->b:Lcom/google/android/location/places/b;

    .line 98
    invoke-static {p1}, Lcom/google/android/location/o/ab;->a(Landroid/content/Context;)Lcom/google/android/location/o/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ae;->l:Lcom/google/android/location/o/ab;

    .line 99
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/android/location/places/ae;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v0}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/google/android/location/places/ae;->g:Lcom/google/android/location/fused/g;

    iget-object v2, p0, Lcom/google/android/location/places/ae;->m:Lcom/google/android/gms/location/i;

    invoke-virtual {v0, v2}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/h;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/location/places/ae;->h:Lcom/google/android/location/places/x;

    iget-object v2, v0, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 172
    :cond_1
    monitor-exit v1

    return-void

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/places/ae;->h:Lcom/google/android/location/places/x;

    iget-object v0, p0, Lcom/google/android/location/places/ae;->f:Lcom/google/android/location/places/w;

    invoke-static {v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/w;

    iput-object v0, v2, Lcom/google/android/location/places/x;->d:Lcom/google/android/location/places/w;

    iget-object v0, v2, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, v2, Lcom/google/android/location/places/x;->b:Lcom/google/android/location/places/bk;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    iget-object v3, v2, Lcom/google/android/location/places/x;->b:Lcom/google/android/location/places/bk;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, v2, Lcom/google/android/location/places/x;->c:Lcom/google/android/location/places/bp;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    iget-object v3, v2, Lcom/google/android/location/places/x;->c:Lcom/google/android/location/places/bp;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, v2, Lcom/google/android/location/places/x;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/z;

    iget-object v4, v2, Lcom/google/android/location/places/x;->e:Lcom/google/android/location/places/w;

    invoke-virtual {v0, v4}, Lcom/google/android/location/places/z;->a(Lcom/google/android/location/places/w;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/location/places/ae;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 56
    iget-object v2, p0, Lcom/google/android/location/places/ae;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v0}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/PlaceSubscription;

    iget-object v1, p0, Lcom/google/android/location/places/ae;->l:Lcom/google/android/location/o/ab;

    invoke-virtual {v1}, Lcom/google/android/location/o/ab;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    const-string v1, "User is not in the foreground, dropping place estimate"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/places/ae;->j:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/PlaceSubscription;->a(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ae;->b(Lcom/google/android/location/places/PlaceSubscription;)V

    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    const-string v1, "Place subscription is not permitted - removed"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/PlaceRequest;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/places/PlaceLikelihood;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/location/places/PlaceFilter;->a(Lcom/google/android/gms/location/places/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_5

    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    const-string v1, "Place subscription not interested in the place estimate"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/places/ae;->i:Lcom/google/android/location/places/ab;

    const/16 v4, 0x69

    invoke-virtual {v1, v4, p1, v0}, Lcom/google/android/location/places/ab;->a(ILjava/util/List;Lcom/google/android/location/places/Subscription;)V

    const-string v1, "Places"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Places"

    const-string v4, "Place estimate delivered"

    invoke-static {v1, v4}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v1, "Places"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Places"

    const-string v4, "pending intent cancelled by client"

    invoke-static {v1, v4}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ae;->b(Lcom/google/android/location/places/PlaceSubscription;)V

    goto/16 :goto_0

    :cond_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 102
    iget-object v0, p0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/bm;->b(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 103
    const-string v0, "Places"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "Places"

    const-string v1, "Initializing PlaceSubscriptionManager\'s system cache."

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/ae;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/places/ae;->d:Z

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "Places"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "Places"

    const-string v2, "PlaceSubscriptionManager.initializeSystemCache called >1 times"

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    monitor-exit v1

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ae;->d:Z

    .line 116
    iget-object v0, p0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/bm;->a(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v0}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/PlaceSubscription;

    .line 121
    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ae;->a(Lcom/google/android/location/places/PlaceSubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/places/PlaceSubscription;)V
    .locals 9

    .prologue
    const/16 v1, 0x69

    const/4 v8, 0x2

    .line 179
    invoke-virtual {p1}, Lcom/google/android/location/places/PlaceSubscription;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/location/places/ae;->k:Lcom/google/android/location/places/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/d/b;->b(Lcom/google/android/location/places/Subscription;)V

    .line 183
    :cond_0
    iget-object v0, p1, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/google/android/location/places/ae;->j:Landroid/content/pm/PackageManager;

    invoke-static {v0, v2}, Lcom/google/android/location/o/ad;->a(Landroid/app/PendingIntent;Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 185
    if-ne v0, v8, :cond_3

    const/4 v0, 0x1

    .line 188
    :goto_0
    new-instance v2, Lcom/google/android/gms/location/internal/ClientIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p1, Lcom/google/android/location/places/PlaceSubscription;->c:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    .line 192
    iget-object v3, p1, Lcom/google/android/location/places/PlaceSubscription;->a:Lcom/google/android/gms/location/places/PlaceRequest;

    new-instance v4, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v4}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/location/places/PlaceRequest;->c()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {v4, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/gms/location/places/PlaceRequest;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 193
    const-string v3, "Places"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    const-string v3, "Places"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location request priority: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "Places"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location request interval: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "Places"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location request FINE permission: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Places"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Places"

    const-string v4, "Request location updates"

    invoke-static {v3, v4}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/location/places/ae;->g:Lcom/google/android/location/fused/g;

    iget-object v4, p0, Lcom/google/android/location/places/ae;->m:Lcom/google/android/gms/location/i;

    invoke-virtual {v3, v1, v4, v0, v2}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/h;ZLjava/util/Collection;)V

    .line 200
    invoke-direct {p0}, Lcom/google/android/location/places/ae;->a()V

    .line 201
    return-void

    .line 185
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 192
    :pswitch_1
    const/16 v1, 0x68

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x66

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x64

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/location/places/PlaceSubscription;)V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/google/android/location/places/ae;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/ae;->e:Lcom/google/android/location/places/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/bm;->b(Lcom/google/android/location/places/Subscription;)Lcom/google/android/location/places/Subscription;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/PlaceSubscription;

    .line 290
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/location/places/PlaceSubscription;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/google/android/location/places/ae;->k:Lcom/google/android/location/places/d/b;

    invoke-virtual {v2, v0}, Lcom/google/android/location/places/d/b;->c(Lcom/google/android/location/places/Subscription;)V

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/places/ae;->d:Z

    if-nez v0, :cond_1

    .line 294
    monitor-exit v1

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/places/ae;->a()V

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

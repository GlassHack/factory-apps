.class final Lcom/google/android/location/places/ui/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Lcom/google/android/gms/location/places/PlaceFilter;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/j;

.field private final b:Lcom/google/android/gms/location/places/PlaceFilter;

.field private c:Lcom/google/android/location/places/ui/ay;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lcom/google/android/location/places/ui/az;

.field private volatile g:Lcom/google/android/location/places/ui/az;

.field private volatile h:Lcom/google/android/location/places/ui/az;

.field private volatile i:Lcom/google/android/location/places/ui/az;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Lcom/google/android/gms/location/places/i;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/location/places/PlaceType;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->aY:Lcom/google/android/gms/location/places/PlaceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/location/places/i;->a:Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/i;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/places/ui/aw;->j:Lcom/google/android/gms/location/places/PlaceFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/location/places/ui/r;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/aw;->d:Ljava/util/concurrent/Executor;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/ui/aw;->e:Ljava/lang/Object;

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v1, p3, Lcom/google/android/location/places/ui/r;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p3, Lcom/google/android/location/places/ui/r;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/common/api/k;->a:Ljava/lang/String;

    .line 82
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/location/places/s;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/aw;->a:Lcom/google/android/gms/common/api/j;

    .line 84
    iget-object v0, p3, Lcom/google/android/location/places/ui/r;->a:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-object v0, p0, Lcom/google/android/location/places/ui/aw;->b:Lcom/google/android/gms/location/places/PlaceFilter;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->c:Lcom/google/android/location/places/ui/ay;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/location/places/k;)[Lcom/google/android/gms/location/places/h;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_0

    new-array v0, v0, [Lcom/google/android/gms/location/places/h;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/k;->c()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/location/places/h;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/k;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/k;->c(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/gms/common/api/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->a:Lcom/google/android/gms/common/api/j;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/location/places/k;)Lcom/google/android/gms/location/places/h;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/k;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->b:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/location/places/ui/aw;->j:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->f:Lcom/google/android/location/places/ui/az;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->f:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->g:Lcom/google/android/location/places/ui/az;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->g:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->h:Lcom/google/android/location/places/ui/az;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->h:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->i:Lcom/google/android/location/places/ui/az;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->i:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 113
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/location/places/ui/ax;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/ui/ax;-><init>(Lcom/google/android/location/places/ui/aw;Lcom/google/android/gms/location/places/UserAddedPlace;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/location/places/ui/ba;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/places/ui/ba;-><init>(Lcom/google/android/location/places/ui/aw;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 154
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/places/ui/aw;->h:Lcom/google/android/location/places/ui/az;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/google/android/location/places/ui/aw;->h:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/az;->a()V

    .line 159
    :cond_0
    iput-object v0, p0, Lcom/google/android/location/places/ui/aw;->h:Lcom/google/android/location/places/ui/az;

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/location/places/ui/ay;)V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/places/ui/aw;->c:Lcom/google/android/location/places/ui/ay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/location/places/ui/bb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/location/places/ui/bb;-><init>(Lcom/google/android/location/places/ui/aw;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/places/ui/aw;->f:Lcom/google/android/location/places/ui/az;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/google/android/location/places/ui/aw;->f:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/az;->a()V

    .line 135
    :cond_0
    iput-object v0, p0, Lcom/google/android/location/places/ui/aw;->f:Lcom/google/android/location/places/ui/az;

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceType;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 166
    new-instance v8, Lcom/google/android/location/places/ui/ax;

    invoke-static {}, Lcom/google/android/gms/location/places/UserAddedPlace;->a()Lcom/google/android/gms/location/places/am;

    move-result-object v7

    iput-object p1, v7, Lcom/google/android/gms/location/places/am;->a:Ljava/lang/String;

    iput-object p2, v7, Lcom/google/android/gms/location/places/am;->c:Ljava/lang/String;

    iput-object p3, v7, Lcom/google/android/gms/location/places/am;->e:Ljava/lang/String;

    iput-object p4, v7, Lcom/google/android/gms/location/places/am;->f:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/location/places/PlaceType;

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/location/places/am;->d:Ljava/util/List;

    iput-object p6, v7, Lcom/google/android/gms/location/places/am;->b:Lcom/google/android/gms/maps/model/LatLng;

    new-instance v0, Lcom/google/android/gms/location/places/UserAddedPlace;

    iget-object v2, v7, Lcom/google/android/gms/location/places/am;->a:Ljava/lang/String;

    iget-object v3, v7, Lcom/google/android/gms/location/places/am;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v7, Lcom/google/android/gms/location/places/am;->c:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/location/places/am;->d:Ljava/util/List;

    iget-object v6, v7, Lcom/google/android/gms/location/places/am;->e:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/gms/location/places/am;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/UserAddedPlace;-><init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, p0, v0}, Lcom/google/android/location/places/ui/ax;-><init>(Lcom/google/android/location/places/ui/aw;Lcom/google/android/gms/location/places/UserAddedPlace;)V

    .line 174
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->i:Lcom/google/android/location/places/ui/az;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->i:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 179
    :cond_0
    iput-object v8, p0, Lcom/google/android/location/places/ui/aw;->i:Lcom/google/android/location/places/ui/az;

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/location/places/w;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/location/places/ui/bc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/location/places/ui/bc;-><init>(Lcom/google/android/location/places/ui/aw;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/places/ui/aw;->g:Lcom/google/android/location/places/ui/az;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/google/android/location/places/ui/aw;->g:Lcom/google/android/location/places/ui/az;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/az;->a()V

    .line 147
    :cond_0
    iput-object v0, p0, Lcom/google/android/location/places/ui/aw;->g:Lcom/google/android/location/places/ui/az;

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v1, p0, Lcom/google/android/location/places/ui/aw;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 122
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/location/places/ui/aw;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 126
    return-void
.end method

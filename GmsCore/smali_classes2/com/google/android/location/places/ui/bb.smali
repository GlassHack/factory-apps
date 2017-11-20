.class final Lcom/google/android/location/places/ui/bb;
.super Lcom/google/android/location/places/ui/az;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/aw;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private volatile f:Lcom/google/android/gms/common/api/y;

.field private g:Lcom/google/android/gms/location/places/k;

.field private h:[Lcom/google/android/gms/location/places/h;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/ui/aw;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iput-object p1, p0, Lcom/google/android/location/places/ui/bb;->a:Lcom/google/android/location/places/ui/aw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/places/ui/az;-><init>(Lcom/google/android/location/places/ui/aw;B)V

    .line 206
    iput-object v1, p0, Lcom/google/android/location/places/ui/bb;->f:Lcom/google/android/gms/common/api/y;

    .line 207
    iput-object v1, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    .line 208
    iput-object v1, p0, Lcom/google/android/location/places/ui/bb;->h:[Lcom/google/android/gms/location/places/h;

    .line 211
    iput-object p2, p0, Lcom/google/android/location/places/ui/bb;->d:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/google/android/location/places/ui/bb;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 213
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 263
    iget-object v0, p0, Lcom/google/android/location/places/ui/bb;->f:Lcom/google/android/gms/common/api/y;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/android/location/places/ui/bb;->f:Lcom/google/android/gms/common/api/y;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/y;->b()V

    .line 266
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 217
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v1}, Lcom/google/android/location/places/ui/aw;->b(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/gms/common/api/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/places/ui/bb;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p0, Lcom/google/android/location/places/ui/bb;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/location/places/ui/bb;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v4}, Lcom/google/android/location/places/ui/aw;->c(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    sget-object v5, Lcom/google/android/location/x;->O:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v5}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/location/places/w;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;I)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/bb;->f:Lcom/google/android/gms/common/api/y;

    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->f:Lcom/google/android/gms/common/api/y;

    sget-object v0, Lcom/google/android/location/x;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/k;

    iput-object v0, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    iget-object v0, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/k;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed places query for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/places/ui/bb;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    iput-object v6, p0, Lcom/google/android/location/places/ui/bb;->f:Lcom/google/android/gms/common/api/y;

    .line 222
    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/k;->a()V

    .line 227
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/places/ui/bb;->b:Z

    if-eqz v1, :cond_4

    .line 239
    :goto_1
    return-void

    .line 217
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/gms/location/places/k;)[Lcom/google/android/gms/location/places/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/bb;->h:[Lcom/google/android/gms/location/places/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/google/android/location/places/ui/bb;->f:Lcom/google/android/gms/common/api/y;

    .line 222
    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->g:Lcom/google/android/gms/location/places/k;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/k;->a()V

    :cond_3
    throw v0

    .line 231
    :cond_4
    monitor-enter p0

    .line 232
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 233
    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/google/android/location/places/ui/bb;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->h:[Lcom/google/android/gms/location/places/h;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/ay;->a([Lcom/google/android/gms/location/places/h;)V

    .line 239
    :cond_5
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/places/ui/bb;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/bb;->d:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ay;->T()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

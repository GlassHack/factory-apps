.class final Lcom/google/android/location/places/ui/bc;
.super Lcom/google/android/location/places/ui/az;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/common/api/y;

.field d:Lcom/google/android/gms/location/places/c;

.field e:[Lcom/google/android/gms/location/places/AutocompletePrediction;

.field final synthetic f:Lcom/google/android/location/places/ui/aw;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/maps/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/ui/aw;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iput-object p1, p0, Lcom/google/android/location/places/ui/bc;->f:Lcom/google/android/location/places/ui/aw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/places/ui/az;-><init>(Lcom/google/android/location/places/ui/aw;B)V

    .line 275
    iput-object v1, p0, Lcom/google/android/location/places/ui/bc;->a:Lcom/google/android/gms/common/api/y;

    .line 276
    iput-object v1, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    .line 277
    iput-object v1, p0, Lcom/google/android/location/places/ui/bc;->e:[Lcom/google/android/gms/location/places/AutocompletePrediction;

    .line 280
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iput-object p2, p0, Lcom/google/android/location/places/ui/bc;->g:Ljava/lang/String;

    .line 283
    iput-object p3, p0, Lcom/google/android/location/places/ui/bc;->h:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 284
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 331
    iget-object v0, p0, Lcom/google/android/location/places/ui/bc;->a:Lcom/google/android/gms/common/api/y;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/android/location/places/ui/bc;->a:Lcom/google/android/gms/common/api/y;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/y;->b()V

    .line 334
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 288
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    iget-object v2, p0, Lcom/google/android/location/places/ui/bc;->f:Lcom/google/android/location/places/ui/aw;

    invoke-static {v2}, Lcom/google/android/location/places/ui/aw;->b(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/gms/common/api/j;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/places/ui/bc;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/location/places/ui/bc;->h:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/location/places/w;->a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/bc;->a:Lcom/google/android/gms/common/api/y;

    iget-object v2, p0, Lcom/google/android/location/places/ui/bc;->a:Lcom/google/android/gms/common/api/y;

    sget-object v0, Lcom/google/android/location/x;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/c;

    iput-object v0, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    iget-object v0, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/c;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Places"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed query suggestion query for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/places/ui/bc;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v0, v1

    .line 292
    :goto_0
    iput-object v6, p0, Lcom/google/android/location/places/ui/bc;->a:Lcom/google/android/gms/common/api/y;

    .line 293
    iget-object v1, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/c;->a()V

    .line 297
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/places/ui/bc;->b:Z

    if-eqz v1, :cond_5

    .line 306
    :goto_1
    return-void

    .line 288
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/c;->c()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/location/places/AutocompletePrediction;

    iput-object v0, p0, Lcom/google/android/location/places/ui/bc;->e:[Lcom/google/android/gms/location/places/AutocompletePrediction;

    :goto_2
    iget-object v0, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/c;->c()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/ui/bc;->e:[Lcom/google/android/gms/location/places/AutocompletePrediction;

    iget-object v0, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/c;->b(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AutocompletePrediction;

    aput-object v0, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/google/android/location/places/ui/bc;->a:Lcom/google/android/gms/common/api/y;

    .line 293
    iget-object v1, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    if-eqz v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/google/android/location/places/ui/bc;->d:Lcom/google/android/gms/location/places/c;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/c;->a()V

    :cond_4
    throw v0

    .line 300
    :cond_5
    monitor-enter p0

    .line 301
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/places/ui/bc;->f:Lcom/google/android/location/places/ui/aw;

    invoke-static {v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 302
    if-eqz v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/google/android/location/places/ui/bc;->f:Lcom/google/android/location/places/ui/aw;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/bc;->e:[Lcom/google/android/gms/location/places/AutocompletePrediction;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/ay;->a([Lcom/google/android/gms/location/places/AutocompletePrediction;)V

    .line 306
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

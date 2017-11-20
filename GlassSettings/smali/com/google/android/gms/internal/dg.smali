.class public Lcom/google/android/gms/internal/dg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dg$a;,
        Lcom/google/android/gms/internal/dg$b;
    }
.end annotation


# instance fields
.field private final GG:Lcom/google/android/gms/internal/dm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/dm",
            "<",
            "Lcom/google/android/gms/internal/df;",
            ">;"
        }
    .end annotation
.end field

.field private GH:Landroid/content/ContentProviderClient;

.field private GI:Z

.field private GJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            "Lcom/google/android/gms/internal/dg$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/dm",
            "<",
            "Lcom/google/android/gms/internal/df;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dg;->GH:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dg;->GI:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    return-void
.end method

.method private a(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/internal/dg$b;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dg$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/dg$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/dg$b;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/di;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/internal/dg$b;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/di;Lcom/google/android/gms/location/a;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/di;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/di;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public eF()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dg;->GI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dg;->setMockMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/df;->ap(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastLocationStatus()Lcom/google/android/gms/location/LocationStatus;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/df;->aq(Ljava/lang/String;)Lcom/google/android/gms/location/LocationStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public injectLocation(Landroid/location/Location;I)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "locationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/df;->injectLocation(Landroid/location/Location;I)V

    return-void
.end method

.method public removeAllListeners()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dg$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/df;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/df;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    const-string v0, "Invalid null listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dg$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->GH:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->GJ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->GH:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/dg;->GH:Landroid/content/ContentProviderClient;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dg$b;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/df;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/a;)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/internal/dg$b;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;)V

    return-void
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "mockLocation"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/df;->setMockLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMockMode(Z)V
    .locals 1
    .param p1, "isMockMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/df;->setMockMode(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/dg;->GI:Z

    return-void
.end method

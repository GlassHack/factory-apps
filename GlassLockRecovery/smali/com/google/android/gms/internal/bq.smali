.class public Lcom/google/android/gms/internal/bq;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/bv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static ae(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->h([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static h([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bv;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/bv$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bv;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "getResults() must not be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->T(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/bq$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/bq$5;-><init>(Lcom/google/android/gms/internal/bq;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/bq;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Timeout: 30000ms"

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->ae(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->h(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;",
            ")V"
        }
    .end annotation

    new-instance v5, Lcom/google/android/gms/internal/bq$1;

    invoke-direct {v5, p0, p3}, Lcom/google/android/gms/internal/bq$1;-><init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V

    new-instance v2, Lcom/google/android/gms/internal/bq$2;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gms/internal/bq$2;-><init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V

    new-instance v0, Lcom/google/android/gms/internal/bq$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bq$3;-><init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bp;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V

    new-instance v1, Lcom/google/android/gms/internal/bq$4;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/bq$4;-><init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bq;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bq;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->connect()V

    return-void
.end method

.method public ad(Ljava/lang/String;)Lcom/google/android/gms/droidguard/DroidGuardHandle;
    .locals 4

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/bq$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/bq$6;-><init>(Lcom/google/android/gms/internal/bq;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)V

    new-instance v2, Lcom/google/android/gms/internal/bq$7;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/bq$7;-><init>(Lcom/google/android/gms/internal/bq;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bq;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/bq;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->connect()V

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/droidguard/DroidGuardHandle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/br;

    const-string v1, "Timeout: 30000ms."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/br;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/br;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/br;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.droidguard.internal.IDroidGuardService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.droidguard.service.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bq;->G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bv;

    move-result-object v0

    return-object v0
.end method

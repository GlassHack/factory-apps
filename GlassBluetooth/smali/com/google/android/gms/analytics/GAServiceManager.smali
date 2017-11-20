.class Lcom/google/android/gms/analytics/GAServiceManager;
.super Lcom/google/android/gms/analytics/ac;


# static fields
.field private static lE:Lcom/google/android/gms/analytics/GAServiceManager;

.field private static final ls:Ljava/lang/Object;


# instance fields
.field private lA:Z

.field private lB:Lcom/google/android/gms/analytics/e;

.field private lC:Lcom/google/android/gms/analytics/p;

.field private lD:Z

.field private lt:Lcom/google/android/gms/analytics/d;

.field private volatile lu:Lcom/google/android/gms/analytics/f;

.field private lv:I

.field private lw:Z

.field private lx:Z

.field private ly:Ljava/lang/String;

.field private lz:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ac;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lz:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lA:Z

    new-instance v0, Lcom/google/android/gms/analytics/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GAServiceManager$1;-><init>(Lcom/google/android/gms/analytics/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lB:Lcom/google/android/gms/analytics/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/GAServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lz:Z

    return v0
.end method

.method private aj()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/analytics/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/p;-><init>(Lcom/google/android/gms/analytics/ac;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lC:Lcom/google/android/gms/analytics/p;

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lC:Lcom/google/android/gms/analytics/p;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/p;->m(Landroid/content/Context;)V

    return-void
.end method

.method private ak()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/GAServiceManager$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/GAServiceManager$2;-><init>(Lcom/google/android/gms/analytics/GAServiceManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method static synthetic an()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/GAServiceManager;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/GAServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/GAServiceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/google/android/gms/analytics/GAServiceManager;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/GAServiceManager;->lE:Lcom/google/android/gms/analytics/GAServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/GAServiceManager;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/GAServiceManager;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GAServiceManager;->lE:Lcom/google/android/gms/analytics/GAServiceManager;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/GAServiceManager;->lE:Lcom/google/android/gms/analytics/GAServiceManager;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lu:Lcom/google/android/gms/analytics/f;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lu:Lcom/google/android/gms/analytics/f;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lw:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GAServiceManager;->dispatchLocalHits()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lw:Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lx:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GAServiceManager;->setForceLocalDispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lx:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lz:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized al()Lcom/google/android/gms/analytics/d;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lt:Lcom/google/android/gms/analytics/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/analytics/z;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lB:Lcom/google/android/gms/analytics/e;

    iget-object v2, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/z;-><init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lt:Lcom/google/android/gms/analytics/d;

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->ly:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lt:Lcom/google/android/gms/analytics/d;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->Y()Lcom/google/android/gms/analytics/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->ly:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/m;->overrideHostUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->ly:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GAServiceManager;->ak()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lC:Lcom/google/android/gms/analytics/p;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lA:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GAServiceManager;->aj()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lt:Lcom/google/android/gms/analytics/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized am()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lz:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/GAServiceManager;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dispatchLocalHits()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lu:Lcom/google/android/gms/analytics/f;

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/r;->az()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->nn:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lu:Lcom/google/android/gms/analytics/f;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->dispatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized overrideHostUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostOverride"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lt:Lcom/google/android/gms/analytics/d;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->ly:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lt:Lcom/google/android/gms/analytics/d;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->Y()Lcom/google/android/gms/analytics/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/m;->overrideHostUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setForceLocalDispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lu:Lcom/google/android/gms/analytics/f;

    if-nez v0, :cond_0

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lx:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/analytics/r;->az()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->nA:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lu:Lcom/google/android/gms/analytics/f;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->setForceLocalDispatch()V

    goto :goto_0
.end method

.method declared-synchronized setLocalDispatchPeriod(I)V
    .locals 4
    .param p1, "dispatchPeriodInSeconds"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/r;->az()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->no:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r$a;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lz:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lv:I

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->lz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/GAServiceManager;->ls:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

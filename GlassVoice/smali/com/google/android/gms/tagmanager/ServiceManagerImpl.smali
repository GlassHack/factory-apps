.class Lcom/google/android/gms/tagmanager/ServiceManagerImpl;
.super Lcom/google/android/gms/tagmanager/ct;


# static fields
.field private static Uv:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

.field private static final ls:Ljava/lang/Object;


# instance fields
.field private Ul:Landroid/content/Context;

.field private Um:Lcom/google/android/gms/tagmanager/ar;

.field private volatile Un:Lcom/google/android/gms/tagmanager/ap;

.field private Uo:I

.field private Up:Z

.field private Uq:Z

.field private Ur:Z

.field private Us:Lcom/google/android/gms/tagmanager/as;

.field private Ut:Lcom/google/android/gms/tagmanager/bl;

.field private Uu:Z

.field private connected:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ct;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Up:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uq:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->connected:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ur:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$1;-><init>(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Us:Lcom/google/android/gms/tagmanager/as;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->connected:Z

    return v0
.end method

.method private aj()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/tagmanager/bl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/bl;-><init>(Lcom/google/android/gms/tagmanager/ct;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ut:Lcom/google/android/gms/tagmanager/bl;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ut:Lcom/google/android/gms/tagmanager/bl;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ul:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/bl;->m(Landroid/content/Context;)V

    return-void
.end method

.method private ak()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ul:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$2;-><init>(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method static synthetic an()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)Lcom/google/android/gms/tagmanager/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Um:Lcom/google/android/gms/tagmanager/ar;

    return-object v0
.end method

.method public static getInstance()Lcom/google/android/gms/tagmanager/ServiceManagerImpl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uv:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uv:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uv:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ul:Landroid/content/Context;
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

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ul:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Un:Lcom/google/android/gms/tagmanager/ap;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Un:Lcom/google/android/gms/tagmanager/ap;
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
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->connected:Z
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
    iget v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

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

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->v(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->connected:Z
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

.method declared-synchronized am()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dY(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->v(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uo:I

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uu:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ls:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uq:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bf;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Up:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Un:Lcom/google/android/gms/tagmanager/ap;

    new-instance v1, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$3;-><init>(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ap;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ie()Lcom/google/android/gms/tagmanager/ar;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Um:Lcom/google/android/gms/tagmanager/ar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ul:Landroid/content/Context;

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
    new-instance v0, Lcom/google/android/gms/tagmanager/by;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Us:Lcom/google/android/gms/tagmanager/as;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ul:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/by;-><init>(Lcom/google/android/gms/tagmanager/as;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Um:Lcom/google/android/gms/tagmanager/ar;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ak()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Uq:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Up:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Up:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ut:Lcom/google/android/gms/tagmanager/bl;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Ur:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->aj()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->Um:Lcom/google/android/gms/tagmanager/ar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public setDispatchPeriod(I)V
    .locals 1
    .param p1, "dispatchPeriodInSeconds"    # I

    .prologue
    mul-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->dY(I)V

    return-void
.end method

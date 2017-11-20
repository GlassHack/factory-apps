.class public Lcom/google/android/gms/analytics/service/AnalyticsService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/Object;

.field private static final h:Ljava/util/List;


# instance fields
.field final a:Ljava/lang/String;

.field protected b:Z

.field private final c:Z

.field private d:Z

.field private volatile e:Z

.field private f:Z

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/google/android/gms/analytics/service/h;

.field private l:Landroid/os/Handler;

.field private m:Lcom/google/android/gms/analytics/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->g:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->B:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    .line 57
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->b:Z

    .line 58
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->e:Z

    .line 61
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->f:Z

    .line 73
    new-instance v0, Lcom/google/android/gms/analytics/service/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/service/a;-><init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->i:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Lcom/google/android/gms/analytics/service/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/service/b;-><init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->j:Ljava/lang/Runnable;

    .line 552
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 231
    sget-object v2, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    monitor-enter v2

    .line 233
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 234
    sget-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 235
    invoke-virtual {v0, p0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    monitor-exit v2

    .line 242
    :goto_1
    return-void

    .line 233
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/service/AnalyticsService;)Lcom/google/android/gms/analytics/internal/a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->m:Lcom/google/android/gms/analytics/internal/a;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 253
    sget-object v3, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    monitor-enter v3

    .line 255
    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    .line 256
    sget-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 257
    invoke-virtual {v0, p0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 264
    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 255
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 264
    goto :goto_1

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->b:Z

    if-eqz v0, :cond_1

    .line 315
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "Stopping service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->stopSelf()V

    .line 318
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/service/AnalyticsService;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->c()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/analytics/service/AnalyticsService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->k:Lcom/google/android/gms/analytics/service/h;

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/service/h;->a(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method final declared-synchronized a(ZZ)V
    .locals 6

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->f:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 311
    :goto_0
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    .line 299
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/service/AnalyticsService;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 301
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 302
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/service/AnalyticsService;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 305
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    if-eqz v0, :cond_5

    .line 306
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->f:Z

    .line 310
    iput-boolean p2, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_6
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "onBind called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    const-string v0, "com.google.android.gms.analytics.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {p1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Landroid/content/Intent;)V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->d:Z

    .line 195
    new-instance v0, Lcom/google/android/gms/analytics/service/e;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->getApplicationContext()Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->k:Lcom/google/android/gms/analytics/service/h;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/analytics/service/e;-><init>(Lcom/google/android/gms/analytics/service/AnalyticsService;Lcom/google/android/gms/analytics/service/h;)V

    .line 197
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 135
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "The AnalyticsService was created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    new-instance v0, Lcom/google/android/gms/analytics/service/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/service/c;-><init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V

    .line 148
    new-instance v1, Lcom/google/android/gms/analytics/internal/s;

    new-instance v2, Lcom/google/android/gms/analytics/service/i;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/service/i;-><init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/analytics/internal/s;-><init>(Lcom/google/android/gms/analytics/internal/b;Lcom/google/android/gms/analytics/internal/h;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->m:Lcom/google/android/gms/analytics/internal/a;

    .line 151
    new-instance v0, Lcom/google/android/gms/analytics/service/h;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/analytics/service/h;-><init>(Lcom/google/android/gms/analytics/service/AnalyticsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->k:Lcom/google/android/gms/analytics/service/h;

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->k:Lcom/google/android/gms/analytics/service/h;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/service/h;->start()V

    .line 155
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->e:Z

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/service/d;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/service/d;-><init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/service/AnalyticsService;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 170
    const-string v0, "com.google.android.gms.analytics.service.START"

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 171
    return-void

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "The AnalyticsService was destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->k:Lcom/google/android/gms/analytics/service/h;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/service/h;->a()V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->k:Lcom/google/android/gms/analytics/service/h;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/service/h;->interrupt()V

    .line 179
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 187
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "onRebind called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    const-string v0, "com.google.android.gms.analytics.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Landroid/content/Intent;)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->d:Z

    .line 222
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->c:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onUnbind called for intent "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    const-string v0, "com.google.android.gms.analytics.service.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-static {p1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iput-boolean v3, p0, Lcom/google/android/gms/analytics/service/AnalyticsService;->d:Z

    .line 209
    invoke-direct {p0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->c()V

    .line 212
    :cond_1
    return v3

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

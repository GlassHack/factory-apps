.class public Lcom/google/android/gms/update/SystemUpdateService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static a:Ljava/util/regex/Pattern;

.field static volatile b:Z

.field private static d:Lcom/google/android/gms/update/a;

.field private static m:Ljava/lang/Object;

.field private static n:Landroid/os/PowerManager$WakeLock;

.field private static o:J


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private e:Lcom/android/a/a;

.field private f:Lcom/android/a/b;

.field private g:Ljava/lang/Object;

.field private h:Lcom/google/android/gms/update/j;

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Landroid/content/Intent;

.field private p:Landroid/app/PendingIntent;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Lcom/google/android/gms/update/d;

.field private u:I

.field private v:Z

.field private w:Lcom/google/android/gms/update/f;

.field private x:Landroid/content/pm/PackageManager;

.field private y:Lcom/google/android/gms/http/GoogleHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "^([0-9][0-9])([0-9][0-9])-([0-9][0-9])([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/update/SystemUpdateService;->a:Ljava/util/regex/Pattern;

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/update/SystemUpdateService;->m:Ljava/lang/Object;

    .line 328
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/update/SystemUpdateService;->o:J

    .line 346
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/update/SystemUpdateService;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 317
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->g:Ljava/lang/Object;

    .line 320
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->i:Ljava/lang/Object;

    .line 321
    iput-boolean v1, p0, Lcom/google/android/gms/update/SystemUpdateService;->j:Z

    .line 322
    iput-boolean v1, p0, Lcom/google/android/gms/update/SystemUpdateService;->k:Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->s:Z

    .line 339
    iput-boolean v1, p0, Lcom/google/android/gms/update/SystemUpdateService;->v:Z

    .line 1707
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/update/SystemUpdateService;I)I
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/google/android/gms/update/SystemUpdateService;->u:I

    return p1
.end method

.method static a(Landroid/content/SharedPreferences;Landroid/content/Context;)J
    .locals 6

    .prologue
    const/4 v4, 0x3

    const-wide/16 v0, 0x0

    .line 1653
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_urgency"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-wide v0

    .line 1658
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_mobile_network_delay"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 1660
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 1662
    const-string v4, "url_change"

    invoke-interface {p0, v4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/update/SystemUpdateService;Lcom/google/android/gms/http/GoogleHttpClient;)Lcom/google/android/gms/http/GoogleHttpClient;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/update/SystemUpdateService;->y:Lcom/google/android/gms/http/GoogleHttpClient;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/update/a;)Lcom/google/android/gms/update/a;
    .locals 0

    .prologue
    .line 56
    sput-object p0, Lcom/google/android/gms/update/SystemUpdateService;->d:Lcom/google/android/gms/update/a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/d;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->t:Lcom/google/android/gms/update/d;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/update/SystemUpdateService;Lcom/google/android/gms/update/j;)Lcom/google/android/gms/update/j;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/update/SystemUpdateService;->h:Lcom/google/android/gms/update/j;

    return-object p1
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1630
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1632
    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1633
    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1634
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 498
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    .line 499
    if-nez p1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    sput-wide v4, Lcom/google/android/gms/update/SystemUpdateService;->o:J

    .line 503
    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/android/gms/update/SystemUpdateService;->o:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/update/SystemUpdateService;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/gms/update/SystemUpdateService;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/update/a;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->d:Lcom/google/android/gms/update/a;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/gms/update/SystemUpdateService;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/update/SystemUpdateService;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/gms/update/SystemUpdateService;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/update/SystemUpdateService;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->u:I

    return v0
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 56
    sget-wide v0, Lcom/google/android/gms/update/SystemUpdateService;->o:J

    return-wide v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 349
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 350
    sget-object v1, Lcom/google/android/gms/update/SystemUpdateService;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    sget-object v2, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 352
    const/4 v2, 0x1

    const-string v3, "SystemUpdateService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 353
    sput-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 355
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/update/SystemUpdateService;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 56
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "active receiver: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/update/SystemUpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Lcom/google/android/gms/update/SystemUpdateService$ActiveReceiver;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_0
    const-string v0, "disabled"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.update.STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/update/SystemUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 591
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/update/SystemUpdateService;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/update/SystemUpdateService;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/gms/update/SystemUpdateService;->s:Z

    return p1
.end method

.method static synthetic e(Lcom/google/android/gms/update/SystemUpdateService;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/update/SystemUpdateService;->d()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/update/SystemUpdateService;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/update/SystemUpdateService;)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->k:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->l:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->e:Lcom/android/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->f:Lcom/android/a/b;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->h:Lcom/google/android/gms/update/j;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->p:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/http/GoogleHttpClient;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->y:Lcom/google/android/gms/http/GoogleHttpClient;

    return-object v0
.end method

.method static synthetic p(Lcom/google/android/gms/update/SystemUpdateService;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->s:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.update.START_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->w:Lcom/google/android/gms/update/f;

    invoke-virtual {v0}, Lcom/google/android/gms/update/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 395
    :cond_0
    const-string v0, "SystemUpdateService"

    const-string v1, "onBind is called with an unexpected intent, returning null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    const/4 v3, 0x0

    .line 400
    const-string v0, "SystemUpdateService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->q:I

    .line 404
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->r:I

    .line 406
    const-string v0, "update"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->c:Landroid/content/SharedPreferences;

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 410
    new-instance v0, Lcom/android/a/a;

    const-string v1, "update.download.scheduler"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/a;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->e:Lcom/android/a/a;

    .line 413
    new-instance v0, Lcom/android/a/b;

    invoke-direct {v0}, Lcom/android/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->f:Lcom/android/a/b;

    .line 414
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->f:Lcom/android/a/b;

    iput-wide v4, v0, Lcom/android/a/b;->a:J

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->f:Lcom/android/a/b;

    iput-wide v4, v0, Lcom/android/a/b;->b:J

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/update/SystemUpdateService$Receiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->p:Landroid/app/PendingIntent;

    .line 420
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 422
    invoke-static {p0, v0, v3}, Lcom/google/android/gms/update/SystemUpdateService;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 424
    invoke-virtual {p0}, Lcom/google/android/gms/update/SystemUpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->x:Landroid/content/pm/PackageManager;

    .line 426
    new-instance v0, Lcom/google/android/gms/update/d;

    new-instance v1, Lcom/google/android/gms/update/e;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/update/e;-><init>(Lcom/google/android/gms/update/SystemUpdateService;Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/update/d;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->t:Lcom/google/android/gms/update/d;

    .line 427
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->t:Lcom/google/android/gms/update/d;

    invoke-virtual {v0}, Lcom/google/android/gms/update/d;->a()V

    .line 428
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->t:Lcom/google/android/gms/update/d;

    invoke-virtual {v0}, Lcom/google/android/gms/update/d;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->u:I

    .line 429
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->t:Lcom/google/android/gms/update/d;

    invoke-virtual {v0}, Lcom/google/android/gms/update/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->v:Z

    .line 431
    new-instance v0, Lcom/google/android/gms/update/f;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/update/f;-><init>(Lcom/google/android/gms/update/SystemUpdateService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->w:Lcom/google/android/gms/update/f;

    .line 432
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 514
    const-string v0, "SystemUpdateService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 516
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->t:Lcom/google/android/gms/update/d;

    invoke-virtual {v0}, Lcom/google/android/gms/update/d;->b()V

    .line 517
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->y:Lcom/google/android/gms/http/GoogleHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->y:Lcom/google/android/gms/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    .line 518
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 1666
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "verify_progress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "download_progress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1668
    :cond_0
    const-string v0, "status"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1670
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 1685
    :cond_1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/update/SystemUpdateService;->q:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/google/android/gms/update/SystemUpdateService;->r:I

    if-ne v0, v3, :cond_3

    .line 1696
    :cond_2
    :goto_1
    return-void

    .line 1672
    :sswitch_0
    const-string v0, "verify_progress"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 1677
    :sswitch_1
    const-string v0, "download_progress"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1678
    if-ltz v0, :cond_1

    if-eq v2, v3, :cond_1

    .line 1679
    iget-object v2, p0, Lcom/google/android/gms/update/SystemUpdateService;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "status"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1681
    invoke-direct {p0}, Lcom/google/android/gms/update/SystemUpdateService;->d()V

    move v2, v3

    goto :goto_0

    .line 1687
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.update.SYSTEM_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1688
    const-string v4, "status"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1689
    if-eq v0, v1, :cond_4

    .line 1690
    const-string v1, "progress"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1692
    :cond_4
    iput v2, p0, Lcom/google/android/gms/update/SystemUpdateService;->q:I

    .line 1693
    iput v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->r:I

    .line 1694
    invoke-virtual {p0, v3}, Lcom/google/android/gms/update/SystemUpdateService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1670
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    .prologue
    const-wide/32 v0, 0x1499700

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 541
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "onStartCommand: intent: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/c/a;->b()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    move v0, v4

    .line 586
    :goto_0
    return v0

    .line 549
    :cond_1
    if-eqz p1, :cond_3

    .line 550
    const-string v2, "notify_snooze"

    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    invoke-static {p0}, Lcom/google/android/gms/update/SystemUpdateService;->c(Landroid/content/Context;)V

    .line 552
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-wide/32 v6, 0xea60

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    rsub-int v2, v2, 0x5a0

    int-to-long v2, v2

    mul-long/2addr v2, v6

    cmp-long v6, v2, v0

    if-gez v6, :cond_9

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/update/SystemUpdateService;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "notify_snooze"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v0, v6

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 557
    :cond_2
    const-string v0, "from_activity"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_repeat"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 562
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/update/SystemUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 563
    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    sget-object v0, Lcom/google/android/gms/update/SystemUpdateService;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    move v0, v4

    .line 566
    goto :goto_0

    .line 569
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/update/SystemUpdateService;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->j:Z

    if-nez v0, :cond_7

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->j:Z

    .line 572
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/update/g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/update/g;-><init>(Lcom/google/android/gms/update/SystemUpdateService;B)V

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    invoke-static {}, Lcom/google/android/gms/c/a;->k()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/c/a;->a(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 585
    :cond_6
    :goto_2
    monitor-exit v1

    move v0, v5

    .line 586
    goto/16 :goto_0

    .line 580
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->k:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->l:Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 581
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/update/SystemUpdateService;->k:Z

    .line 582
    if-eqz p1, :cond_6

    iput-object p1, p0, Lcom/google/android/gms/update/SystemUpdateService;->l:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    move-wide v0, v2

    goto/16 :goto_1
.end method

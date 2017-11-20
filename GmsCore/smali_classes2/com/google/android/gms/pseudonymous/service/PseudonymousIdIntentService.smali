.class public final Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

.field private static final b:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "PseudonymousIdIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;)V
    .locals 5

    .prologue
    .line 90
    const-string v0, "PseudonymousIdIntentService"

    const-string v1, "getToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "PseudonymousIdIntentService"

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "PseudonymousIdIntentService"

    const-string v2, "getToken cached"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    sget-object v2, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/pseudonymous/a/a;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    monitor-exit v1

    .line 105
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v2, "PseudonymousIdIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to invoke callback: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    const-string v0, "PseudonymousIdIntentService"

    const-string v1, "getToken start service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/google/android/gms/pseudonymous/service/a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/pseudonymous/service/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/service/b;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/gms/pseudonymous/service/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/pseudonymous/service/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/service/b;)V

    .line 84
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/service/b;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "com.google.android.gms.pseudonymous.service.INTENT"

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    return-void
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 63
    const-string v0, "PseudonymousIdIntentService"

    const-string v1, "onHandleIntent poll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/pseudonymous/service/b;

    .line 65
    if-nez v0, :cond_0

    .line 66
    const-string v0, "PseudonymousIdIntentService"

    const-string v1, "operation missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "operation missing"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->b(Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/google/android/gms/pseudonymous/service/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "PseudonymousIdIntentService"

    const-string v2, "Error executing an operation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

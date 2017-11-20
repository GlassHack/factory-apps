.class public Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "GoogleAuthApiIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/api/r;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/android/gms/auth/api/f;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/f;-><init>(Lcom/google/android/gms/auth/api/r;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/google/android/gms/auth/api/e;)V

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 90
    sget-object v6, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/google/android/gms/auth/api/g;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/api/g;-><init>(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p0, v6, v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/google/android/gms/auth/api/e;)V

    .line 92
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/google/android/gms/auth/api/e;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->a()V

    .line 104
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 105
    const-string v0, "com.google.android.gms.auth.service.INTENT"

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/e;

    .line 58
    if-nez v0, :cond_0

    .line 59
    const-string v0, "GoogleAuthApiIntentService"

    const-string v1, "operation missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "operation missing"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->b(Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 66
    const-string v1, "GoogleAuthApiIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting operation: >> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-interface {v0, p0}, Lcom/google/android/gms/auth/api/e;->a(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 71
    const-string v1, "GoogleAuthApiIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finished operation: << "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms elapsed)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "GoogleAuthApiIntentService"

    const-string v2, "Auth error executing an operation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

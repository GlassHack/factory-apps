.class public Lcom/google/android/gms/auth/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/k;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/android/gms/gcm/y;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/y;

    move-result-object v1

    .line 27
    sget-object v0, Lcom/google/android/gms/auth/b/a;->O:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 28
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 29
    const-string v0, "GLSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/google/android/gms/auth/k;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Initializing Auth cron jobs with period "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "auth_droidguard_recurring_run"

    new-instance v6, Lcom/google/android/gms/gcm/aq;

    invoke-direct {v6}, Lcom/google/android/gms/gcm/aq;-><init>()V

    const-class v7, Lcom/google/android/gms/auth/be/cron/AuthCronService;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/gcm/aq;->a(Ljava/lang/Class;)Lcom/google/android/gms/gcm/aq;

    move-result-object v6

    iput-wide v2, v6, Lcom/google/android/gms/gcm/aq;->a:J

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/aq;->a(Ljava/lang/String;)Lcom/google/android/gms/gcm/aq;

    move-result-object v0

    iput-wide v4, v0, Lcom/google/android/gms/gcm/aq;->b:J

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/aq;->c()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/y;->a(Lcom/google/android/gms/gcm/Task;)V

    .line 34
    return-void
.end method

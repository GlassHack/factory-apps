.class public Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->c:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->c:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->d:Landroid/app/AlarmManager;

    .line 44
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;
    .locals 3

    .prologue
    .line 23
    const-class v1, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;

    .line 27
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->b:Ljava/lang/String;

    const-string v1, "Starting periodic check for user presence."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->c:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/PeriodicCheckReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->d:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 60
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->b:Ljava/lang/String;

    const-string v1, "Stoping periodic check for user presence."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->c:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/PeriodicCheckReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x20000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/c;->d:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 75
    :cond_0
    return-void
.end method

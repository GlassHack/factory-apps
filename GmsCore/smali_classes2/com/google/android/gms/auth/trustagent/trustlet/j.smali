.class public Lcom/google/android/gms/auth/trustagent/trustlet/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/PendingIntent;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/auth/trustagent/trustlet/l;

.field private final e:Landroid/app/AlarmManager;

.field private f:I

.field private g:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/gms/auth/trustagent/trustlet/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".INACTIVITY_TRIGGERED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/l;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/k;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->h:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->d:Lcom/google/android/gms/auth/trustagent/trustlet/l;

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 61
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 62
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/auth/trustagent/trustlet/j;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->b:Landroid/app/PendingIntent;

    .line 64
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->e:Landroid/app/AlarmManager;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V
    .locals 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->e:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->d:Lcom/google/android/gms/auth/trustagent/trustlet/l;

    invoke-interface {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/l;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->d()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->d:Lcom/google/android/gms/auth/trustagent/trustlet/l;

    invoke-interface {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/l;->b()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->g:Z

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->e:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->f:I

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 70
    const/16 v0, 0xf0

    iput v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->f:I

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/google/android/gms/auth/trustagent/trustlet/j;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->c:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 77
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->d()V

    .line 81
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/j;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.class public Lcom/google/android/gms/auth/be/proximity/authorization/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/google/android/gms/auth/be/proximity/authorization/j;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->c:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->c:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->d:Landroid/app/NotificationManager;

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/j;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/google/android/gms/auth/be/proximity/authorization/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->b:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->b:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    .line 33
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->b:Lcom/google/android/gms/auth/be/proximity/authorization/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(II)V
    .locals 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->d:Landroid/app/NotificationManager;

    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/app/bb;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->defaults:I

    const v4, 0x7f020073

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->c:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/authorization/j;->c:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/bb;->a(J)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f100158

    const v1, 0x7f100157

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a(II)V

    .line 55
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 58
    const v0, 0x7f10015a

    const v1, 0x7f100159

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a(II)V

    .line 61
    return-void
.end method

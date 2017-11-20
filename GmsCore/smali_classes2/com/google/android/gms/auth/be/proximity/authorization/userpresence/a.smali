.class public Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;
.super Landroid/support/v4/a/m;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/a/m;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->b:Landroid/content/Context;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->a:Ljava/lang/String;

    const-string v1, "Received intent: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    .line 73
    :goto_0
    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    :cond_0
    return-void

    .line 72
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->c:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string v1, "detection_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    .line 41
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->a:Ljava/lang/String;

    const-string v1, "Received onHandleIntent() with intent: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/google/android/gms/auth/b/a;->y:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->a:Ljava/lang/String;

    const-string v1, "Proximity feature is not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    const-string v0, "detection_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a(Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;)V

    .line 57
    invoke-static {p1}, Landroid/support/v4/a/m;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

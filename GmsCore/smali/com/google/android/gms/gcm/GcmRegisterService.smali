.class public Lcom/google/android/gms/gcm/GcmRegisterService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/gcm/at;

.field b:Lcom/google/android/gms/gcm/ab;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "GcmRegisterService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->b:Lcom/google/android/gms/gcm/ab;

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->a:Lcom/google/android/gms/gcm/at;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->b:Lcom/google/android/gms/gcm/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ab;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->c:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GCM registration failed: invalid or missing checkin "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->a:Lcom/google/android/gms/gcm/at;

    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 40
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmRegisterService;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 51
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmRegisterService;->a()V

    .line 80
    :cond_0
    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->a:Lcom/google/android/gms/gcm/at;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    const-string v0, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmRegisterService;->a:Lcom/google/android/gms/gcm/at;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/at;->b(Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0
.end method

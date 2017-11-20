.class public Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method static a(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a:I

    if-nez v0, :cond_0

    .line 66
    const-string v0, "gcm_enable_registration2"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a:I

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 56
    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->d(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a(Landroid/content/ContentResolver;)V

    .line 58
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 74
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v0

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "google.messenger"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 81
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-gt v2, v4, :cond_1

    sget v2, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a:I

    if-gtz v2, :cond_1

    .line 85
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    const-string v0, "com.google.android.gsf"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    const-string v0, "GCM"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "GCM"

    const-string v1, "Registration proxy: fallback to gsf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v2, "GCM"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string v2, "GCM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registration proxy: serial="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    const-string v2, "gcm_unreg_caller"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v1}, Lcom/google/android/gms/gcm/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    :cond_3
    const-string v1, "GOOG.USER_SERIAL"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "GOOG.USER_AID"

    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_4
    if-nez v0, :cond_5

    .line 111
    const-class v0, Lcom/google/android/gms/gcm/GcmRegisterService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 114
    :cond_5
    const-class v0, Lcom/google/android/gms/gcm/GcmProxyReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    const-string v0, "GOOG.USER_TOKEN"

    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    goto :goto_0
.end method

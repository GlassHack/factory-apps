.class public final Lcom/google/android/gms/gcm/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/android/gms/gcm/y;


# instance fields
.field public a:Landroid/content/Context;

.field private final c:Landroid/app/PendingIntent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/y;->c:Landroid/app/PendingIntent;

    .line 213
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/gcm/y;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/google/android/gms/gcm/y;->b:Lcom/google/android/gms/gcm/y;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/google/android/gms/gcm/y;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/y;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/y;->b:Lcom/google/android/gms/gcm/y;

    .line 198
    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/y;->b:Lcom/google/android/gms/gcm/y;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "app"

    iget-object v2, p0, Lcom/google/android/gms/gcm/y;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 338
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The Google Play Services installed on your device is not from Google. This could be a malicious app trying to spoof you."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/gcm/Task;)V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/Task;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/y;->a(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/y;->a()Landroid/content/Intent;

    move-result-object v0

    .line 250
    const-string v1, "scheduler_action"

    const-string v2, "SCHEDULE_TASK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "task"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 398
    const-string v0, "GcmTaskService must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    iget-object v3, p0, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 403
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 406
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "There is no GcmTaskService component registered within this package. Have you extended GcmTaskService correctly?"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 410
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 411
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The GcmTaskService class you provided "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 419
    return-void

    :cond_1
    move v0, v2

    .line 406
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.class public Lcom/google/android/gms/blescanner/compat/ScanWakefulService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "ScanWakefulService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/blescanner/compat/c;->a(Landroid/content/Context;Z)Lcom/google/android/gms/blescanner/compat/a;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/gms/blescanner/compat/d;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/google/android/gms/blescanner/compat/d;

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/blescanner/compat/ScanWakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/blescanner/compat/ScanWakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    throw v0
.end method

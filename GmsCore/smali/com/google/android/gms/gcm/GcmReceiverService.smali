.class public Lcom/google/android/gms/gcm/GcmReceiverService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 28
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v0, v0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/g;->b(Landroid/content/Intent;)V

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "completedCallback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/os/Messenger;

    .line 40
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.class public Lcom/google/android/gms/gcm/ProxyGTalkService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/gcm/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/gcm/ProxyGTalkService;->a:Lcom/google/android/gms/gcm/as;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/google/android/gms/gcm/as;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/as;-><init>(Lcom/google/android/gms/gcm/ProxyGTalkService;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/ProxyGTalkService;->a:Lcom/google/android/gms/gcm/as;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/ProxyGTalkService;->a:Lcom/google/android/gms/gcm/as;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/gcm/ProxyGTalkService;->a:Lcom/google/android/gms/gcm/as;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/ProxyGTalkService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 54
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/ProxyGTalkService;->stopSelf()V

    .line 47
    const/4 v0, 0x0

    return v0
.end method

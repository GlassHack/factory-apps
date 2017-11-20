.class final Lcom/google/android/gms/gcm/http/c;
.super Lcom/google/android/gms/http/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/http/GoogleHttpService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/http/GoogleHttpService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/gcm/http/c;->a:Lcom/google/android/gms/gcm/http/GoogleHttpService;

    invoke-direct {p0}, Lcom/google/android/gms/http/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/c;->a:Lcom/google/android/gms/gcm/http/GoogleHttpService;

    invoke-static {v0, p1}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Lcom/google/android/gms/gcm/http/GoogleHttpService;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/c;->a:Lcom/google/android/gms/gcm/http/GoogleHttpService;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Lcom/google/android/gms/gcm/http/GoogleHttpService;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

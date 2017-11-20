.class final Lcom/google/android/gms/analytics/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/c;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected, binder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 174
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/o;->a(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/n;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/analytics/c;->e:Lcom/google/android/gms/analytics/internal/n;

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    iget-object v0, v0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/e;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/e;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 190
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    iget-object v0, v0, Lcom/google/android/gms/analytics/c;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    iget-object v0, v0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/f;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/f;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->a:Lcom/google/android/gms/analytics/c;

    iget-object v0, v0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/e;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/e;->b()V

    .line 203
    return-void
.end method

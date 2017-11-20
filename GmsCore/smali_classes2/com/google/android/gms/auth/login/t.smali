.class final Lcom/google/android/gms/auth/login/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/gms/auth/login/t;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gms/auth/login/t;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-static {p2}, Lcom/google/android/gms/auth/login/ad;->a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/login/ac;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Lcom/google/android/gms/auth/login/BrowserActivity;Lcom/google/android/gms/auth/login/ac;)Lcom/google/android/gms/auth/login/ac;

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/auth/login/t;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->b(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z

    .line 203
    const-string v0, "GLSActivity"

    const-string v1, "MM-DG bound!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 208
    const-string v0, "GLSActivity"

    const-string v1, "MM-DG UNBOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/auth/login/t;->a:Lcom/google/android/gms/auth/login/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->b(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z

    .line 210
    return-void
.end method

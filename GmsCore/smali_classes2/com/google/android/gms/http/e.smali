.class public final Lcom/google/android/gms/http/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Landroid/content/ComponentName;

.field private static final b:Landroid/content/Intent;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/ServiceConnection;

.field private volatile e:Lcom/google/android/gms/http/g;

.field private f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.gcm.http.GoogleHttpService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/http/e;->a:Landroid/content/ComponentName;

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/http/e;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/http/e;->b:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/gms/http/e;->c:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/http/e;->f:Ljava/util/concurrent/CountDownLatch;

    .line 84
    new-instance v0, Lcom/google/android/gms/http/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/http/f;-><init>(Lcom/google/android/gms/http/e;)V

    iput-object v0, p0, Lcom/google/android/gms/http/e;->d:Landroid/content/ServiceConnection;

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/http/e;->c:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/http/e;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/http/e;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, "GoogleURLConnectionFactory"

    const-string v1, "Failed to bind Google HTTP Service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/http/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/http/e;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/http/e;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gms/http/e;->b:Landroid/content/Intent;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/http/e;->e:Lcom/google/android/gms/http/g;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/http/e;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string v0, "GoogleURLConnectionFactory"

    const-string v1, "Timeout on service connection"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/http/e;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/http/e;->e:Lcom/google/android/gms/http/g;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/http/e;->e:Lcom/google/android/gms/http/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/http/g;->a(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "GoogleURLConnectionFactory"

    const-string v2, "Exception in Google Http Service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :cond_1
    :goto_1
    const-string v0, "GoogleURLConnectionFactory"

    const-string v1, "Unable to get rewrite rules from HttpService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    const-string v1, "GoogleURLConnectionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupted waiting for binder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/http/e;Lcom/google/android/gms/http/g;)Lcom/google/android/gms/http/g;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gms/http/e;->e:Lcom/google/android/gms/http/g;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/http/e;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/http/e;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/http/e;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/http/e;->d:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/http/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/http/e;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/http/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    const-string v1, "block"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "GoogleURLConnectionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Blocked by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Lcom/google/android/gms/http/a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/http/a;-><init>(Landroid/os/Bundle;)V

    throw v1

    .line 133
    :cond_0
    const-string v1, "rewrite"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 139
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/http/e;->e:Lcom/google/android/gms/http/g;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/http/e;->e:Lcom/google/android/gms/http/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/http/g;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "GoogleURLConnectionFactory"

    const-string v2, "Exception in Google Http Service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/http/e;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/http/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/http/e;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    iput-object v2, p0, Lcom/google/android/gms/http/e;->d:Landroid/content/ServiceConnection;

    .line 185
    iput-object v2, p0, Lcom/google/android/gms/http/e;->e:Lcom/google/android/gms/http/g;

    .line 187
    :cond_0
    return-void
.end method

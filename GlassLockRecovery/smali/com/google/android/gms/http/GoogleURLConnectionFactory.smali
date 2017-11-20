.class public Lcom/google/android/gms/http/GoogleURLConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FH:Landroid/content/ComponentName;

.field private static final FI:Landroid/content/Intent;

.field public static final RULE_BLOCK:Ljava/lang/String; = "block"

.field public static final RULE_NAME:Ljava/lang/String; = "name"

.field public static final RULE_REWRITE:Ljava/lang/String; = "rewrite"


# instance fields
.field private FJ:Landroid/content/ServiceConnection;

.field private volatile FK:Lcom/google/android/gms/http/b;

.field private mContext:Landroid/content/Context;

.field private wB:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.gcm.http.GoogleHttpService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FH:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FH:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FI:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->wB:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;-><init>(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)V

    iput-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FJ:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FI:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FJ:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GoogleURLConnectionFactory"

    const-string v1, "Failed to bind Google HTTP Service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FJ:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->wB:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/http/GoogleURLConnectionFactory;Lcom/google/android/gms/http/b;)Lcom/google/android/gms/http/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FK:Lcom/google/android/gms/http/b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->wB:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private an(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FK:Lcom/google/android/gms/http/b;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->wB:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GoogleURLConnectionFactory"

    const-string v1, "Timeout on service connection"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->wB:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FK:Lcom/google/android/gms/http/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FK:Lcom/google/android/gms/http/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/http/b;->ao(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GoogleURLConnectionFactory"

    const-string v2, "Exception in Google Http Service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const-string v0, "GoogleURLConnectionFactory"

    const-string v1, "Unable to get rewrite rules from HttpService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GoogleURLConnectionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted waiting for binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FJ:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic eB()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FI:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FJ:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FJ:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FJ:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FK:Lcom/google/android/gms/http/b;

    :cond_0
    return-void
.end method

.method public closeConnection(Ljava/net/HttpURLConnection;I)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "responseCode"    # I

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->g(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
.end method

.method g(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FK:Lcom/google/android/gms/http/b;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->FK:Lcom/google/android/gms/http/b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/http/b;->h(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GoogleURLConnectionFactory"

    const-string v2, "Exception in Google Http Service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->an(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "block"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "GoogleURLConnectionFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    new-instance v1, Lcom/google/android/gms/http/a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/http/a;-><init>(Landroid/os/Bundle;)V

    throw v1

    :cond_0
    const-string v1, "rewrite"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

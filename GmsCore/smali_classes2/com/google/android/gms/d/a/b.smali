.class public final Lcom/google/android/gms/d/a/b;
.super Lcom/google/android/gms/common/internal/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/d/a/t;->a(Landroid/os/IBinder;)Lcom/google/android/gms/d/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/d/b;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 202
    new-instance v1, Lcom/google/android/gms/d/a/i;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/d/a/i;-><init>(Lcom/google/android/gms/d/a/b;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 230
    new-instance v2, Lcom/google/android/gms/d/a/j;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/d/a/j;-><init>(Lcom/google/android/gms/d/a/b;Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 240
    invoke-virtual {p0, v1}, Lcom/google/android/gms/d/a/b;->a(Lcom/google/android/gms/common/g;)V

    .line 241
    invoke-virtual {p0, v2}, Lcom/google/android/gms/d/a/b;->a(Lcom/google/android/gms/common/h;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/d/a/b;->c()V

    .line 244
    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/b;

    .line 246
    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/google/android/gms/d/a/k;

    const-string v1, "Timeout: 30000ms."

    invoke-direct {v0, v1}, Lcom/google/android/gms/d/a/k;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 252
    new-instance v0, Lcom/google/android/gms/d/a/k;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/d/a/k;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "com.google.android.gms.droidguard.service.START"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 165
    const-string v0, "getResults() must not be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 166
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 167
    new-instance v0, Lcom/google/android/gms/d/a/h;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gms/d/a/h;-><init>(Lcom/google/android/gms/d/a/b;Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 177
    new-instance v5, Lcom/google/android/gms/d/a/c;

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/d/a/c;-><init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/c;)V

    new-instance v2, Lcom/google/android/gms/d/a/d;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gms/d/a/d;-><init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/c;)V

    new-instance v0, Lcom/google/android/gms/d/a/f;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/d/a/f;-><init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/a/a;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/d/c;)V

    new-instance v1, Lcom/google/android/gms/d/a/g;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/d/a/g;-><init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/d/a/b;->a(Lcom/google/android/gms/common/g;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/d/a/b;->a(Lcom/google/android/gms/common/h;)V

    invoke-virtual {p0}, Lcom/google/android/gms/d/a/b;->c()V

    .line 179
    const-wide/16 v0, 0x7530

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    if-nez v0, :cond_0

    .line 182
    const-string v0, "Timeout: 30000ms"

    invoke-static {v0}, Lcom/google/android/gms/d/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
    .locals 3

    .prologue
    .line 73
    const v0, 0x5d4044

    iget-object v1, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/android/gms/common/internal/aa;->i(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "com.google.android.gms.droidguard.internal.IDroidGuardService"

    return-object v0
.end method

.class public final Lcom/google/android/gms/common/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/common/internal/p;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/HashMap;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/p;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/p;->e:Landroid/os/Handler;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/p;->c:Landroid/content/Context;

    .line 162
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lcom/google/android/gms/common/internal/p;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/internal/p;->b:Lcom/google/android/gms/common/internal/p;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/google/android/gms/common/internal/p;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/internal/p;->b:Lcom/google/android/gms/common/internal/p;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/google/android/gms/common/internal/p;->b:Lcom/google/android/gms/common/internal/p;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/p;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)Z
    .locals 6

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/q;

    .line 171
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/google/android/gms/common/internal/q;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/q;-><init>(Lcom/google/android/gms/common/internal/p;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/internal/j;)V

    .line 179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lcom/google/android/gms/common/internal/p;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/gms/common/internal/q;->b:Lcom/google/android/gms/common/internal/r;

    const/16 v5, 0x81

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 184
    iput-boolean v2, v0, Lcom/google/android/gms/common/internal/q;->e:Z

    .line 185
    iget-object v2, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :goto_0
    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/q;->e:Z

    monitor-exit v1

    return v0

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/p;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 188
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/q;->b(Lcom/google/android/gms/common/internal/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 200
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/internal/j;)V

    .line 201
    iget v2, v0, Lcom/google/android/gms/common/internal/q;->d:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/q;->g:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/google/android/gms/common/internal/q;->f:Landroid/os/IBinder;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/common/internal/j;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 208
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/google/android/gms/common/internal/p;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/gms/common/internal/q;->b:Lcom/google/android/gms/common/internal/r;

    const/16 v5, 0x81

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 213
    iput-boolean v2, v0, Lcom/google/android/gms/common/internal/q;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)V
    .locals 6

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/q;

    .line 232
    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nonexistent connection status for service action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 241
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/q;->b(Lcom/google/android/gms/common/internal/j;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 247
    iget-object v2, v0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/google/android/gms/common/internal/p;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 253
    iget-object v2, p0, Lcom/google/android/gms/common/internal/p;->e:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 282
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 267
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/q;

    .line 268
    iget-object v1, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/google/android/gms/common/internal/p;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/common/internal/q;->b:Lcom/google/android/gms/common/internal/r;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 276
    iget-object v2, p0, Lcom/google/android/gms/common/internal/p;->d:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

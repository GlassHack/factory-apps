.class public final Lcom/google/android/gms/gcm/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final k:Ljava/util/HashSet;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:Lcom/google/android/gms/gcm/bc;

.field h:Lcom/google/b/a/a;

.field i:Lcom/google/android/gms/gcm/aw;

.field j:Z

.field private l:Lcom/google/android/gms/gcm/au;

.field private final m:Landroid/content/Context;

.field private final n:Landroid/os/PowerManager$WakeLock;

.field private final o:Ljava/lang/Object;

.field private final p:Landroid/os/Handler;

.field private q:Lorg/apache/http/client/HttpClient;

.field private final r:Lcom/google/android/gms/gcm/bf;

.field private final s:Lcom/google/android/gms/gcm/ay;

.field private t:I

.field private final u:Lcom/google/android/gms/gcm/m;

.field private final v:Ljava/lang/Runnable;

.field private final w:Lcom/google/android/gms/gcm/z;

.field private final x:Lcom/google/android/gms/gcm/GcmPackageTracker;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 270
    sput-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "android.intent.category.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "com.google.android.gsf.subscribedfeeds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "INSTALL_ASSET"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "REMOVE_ASSET"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "SERVER_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "DECLINE_ASSET"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.googlevoice.INBOX_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/gcm/bf;Lcom/google/android/gms/gcm/ay;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 427
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 235
    const v0, 0x15180

    iput v0, p0, Lcom/google/android/gms/gcm/g;->a:I

    .line 239
    const/16 v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/gcm/g;->b:I

    .line 246
    iput-boolean v2, p0, Lcom/google/android/gms/gcm/g;->c:Z

    .line 252
    iput v2, p0, Lcom/google/android/gms/gcm/g;->d:I

    .line 258
    const/16 v0, 0xe10

    iput v0, p0, Lcom/google/android/gms/gcm/g;->e:I

    .line 295
    iput v3, p0, Lcom/google/android/gms/gcm/g;->t:I

    .line 298
    new-instance v0, Lcom/google/android/gms/gcm/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/h;-><init>(Lcom/google/android/gms/gcm/g;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->v:Ljava/lang/Runnable;

    .line 304
    new-instance v0, Lcom/google/android/gms/gcm/z;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->w:Lcom/google/android/gms/gcm/z;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->y:Ljava/lang/String;

    .line 332
    iput-boolean v3, p0, Lcom/google/android/gms/gcm/g;->j:Z

    .line 428
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->o:Ljava/lang/Object;

    .line 429
    iput-object p1, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    .line 430
    iput-object p2, p0, Lcom/google/android/gms/gcm/g;->p:Landroid/os/Handler;

    .line 432
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 433
    const-string v1, "GOOGLE_C2DM"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->n:Landroid/os/PowerManager$WakeLock;

    .line 434
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 435
    iput-object p3, p0, Lcom/google/android/gms/gcm/g;->r:Lcom/google/android/gms/gcm/bf;

    .line 436
    iput-object p4, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    .line 437
    new-instance v0, Lcom/google/android/gms/gcm/bc;

    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/gcm/bc;-><init>(Landroid/content/Context;Lcom/google/android/gms/gcm/g;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    .line 438
    new-instance v0, Lcom/google/android/gms/gcm/m;

    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->p:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->v:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/gms/gcm/m;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Lcom/google/android/gms/gcm/ay;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->u:Lcom/google/android/gms/gcm/m;

    .line 440
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmPackageTracker;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPackageTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->x:Lcom/google/android/gms/gcm/GcmPackageTracker;

    .line 441
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/aw;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->i:Lcom/google/android/gms/gcm/aw;

    .line 442
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->i:Lcom/google/android/gms/gcm/aw;

    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gcm_cache2"

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/gcm/aw;->c:I

    .line 444
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Context;)V

    .line 445
    return-void
.end method

.method private static a(Lcom/google/b/a/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/google/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/b;

    .line 1365
    iget-object v2, v0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "google."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    iget-object v0, v0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    .line 1369
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Lcom/google/b/a/a/e;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1202
    iget-object v6, p2, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    .line 1203
    iget-wide v0, p2, Lcom/google/b/a/a/e;->i:J

    long-to-int v8, v0

    .line 1204
    new-instance v0, Lcom/google/android/gms/gcm/l;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/l;-><init>(Lcom/google/android/gms/gcm/g;Landroid/content/Intent;Lcom/google/b/a/a/e;J)V

    .line 1207
    sget-object v1, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v3, v7

    .line 1212
    :goto_0
    const-string v1, "GCM-DMM"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Send broadcast "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_4

    const-string v1, ""

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " extras: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;)V

    .line 1221
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->p:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/gcm/k;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/gcm/k;-><init>(Lcom/google/android/gms/gcm/g;Lcom/google/android/gms/gcm/l;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1227
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    if-gtz v8, :cond_6

    .line 1230
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/gcm/g;->p:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, v0

    move-object v8, v7

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1251
    :goto_3
    return-void

    .line 1207
    :cond_1
    const-string v1, "INSTALL_ASSET"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "REMOVE_ASSET"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DECLINE_ASSET"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "UPDATES_AVAILABLE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SERVER_NOTIFICATION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v3, v7

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".permission.C2D_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1214
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " with permission="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    const-string v1, ""

    goto/16 :goto_2

    .line 1227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1239
    :cond_6
    invoke-static {v8}, Lcom/google/android/gms/gcm/f;->b(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1240
    const-string v1, "GCM-DMM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to send message to stopped user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/gms/gcm/g;->p:Landroid/os/Handler;

    move v5, v8

    move-object v6, p1

    move-object v8, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    goto :goto_3
.end method

.method private static a(Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 1067
    if-eqz p0, :cond_0

    .line 1068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    invoke-static {p0, v0}, Lcom/google/android/gms/gcm/g;->a(Landroid/os/Messenger;Landroid/content/Intent;)V

    .line 1071
    :cond_0
    return-void
.end method

.method private static a(Landroid/os/Messenger;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1120
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1121
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1123
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    const-string v0, "GCM-DMM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    const-string v0, "GCM-DMM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent API result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    const-string v0, "Failed to return send result using messenger"

    invoke-static {v0}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/g;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/gcm/g;->f()V

    return-void
.end method

.method private a(Lcom/google/b/a/a/e;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1258
    iget-object v0, p1, Lcom/google/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1259
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/b;

    .line 1261
    iget-object v2, v0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    .line 1262
    iget-object v0, v0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    .line 1264
    const-string v3, "from"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1265
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "google."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1269
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1274
    :cond_1
    iget-boolean v0, p1, Lcom/google/b/a/a/e;->q:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/google/b/a/a/e;->l:Z

    if-eqz v0, :cond_3

    .line 1275
    iget-object v0, p1, Lcom/google/b/a/a/e;->m:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/google/b/a/a/p;

    invoke-direct {v1}, Lcom/google/b/a/a/p;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/p;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Lcom/google/b/a/a/p;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {v1}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v1

    iget-object v2, v0, Lcom/google/b/a/a/p;->c:Lcom/google/protobuf/a/a;

    invoke-virtual {v2}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v2

    iget-object v3, v0, Lcom/google/b/a/a/p;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {v3}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/b/a/a/p;->a:J

    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->i:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/gcm/aw;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/gcm/a/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    const-string v0, "Cound not find encryption key"

    const-string v1, "GCM-DMM"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "gcm_error_code"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "gcm_error_msg"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    :cond_3
    :goto_2
    return-void

    .line 1275
    :catch_0
    move-exception v0

    const-string v1, "Error while parsing payload container."

    const-string v2, "GCM-DMM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "gcm_error_code"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gcm_error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/gcm/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v0, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/gcm/a/a;->b(Ljavax/crypto/SecretKey;[B[B)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "Signature verification failed for encrypted message."

    const-string v1, "GCM-DMM"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "gcm_error_code"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "gcm_error_msg"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Error while parsing Payload out of decrypted bytes."

    const-string v2, "GCM-DMM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "gcm_error_code"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gcm_error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    :try_start_2
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/gcm/a/a;->a(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v0

    new-instance v1, Lcom/google/b/a/a/o;

    invoke-direct {v1}, Lcom/google/b/a/a/o;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/o;

    iget-object v0, v0, Lcom/google/b/a/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/b;

    iget-object v2, v0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Lcom/google/protobuf/a/e; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Algorithm for decryption not supported."

    const-string v2, "GCM-DMM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "gcm_error_code"

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gcm_error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Key for decryption was invalid."

    const-string v2, "GCM-DMM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "gcm_error_code"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gcm_error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v1, "Error while decrypting message."

    const-string v2, "GCM-DMM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "gcm_error_code"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gcm_error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Error while decrypting message."

    const-string v2, "GCM-DMM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "gcm_error_code"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gcm_error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Error while decrypting message."

    const-string v2, "GCM-DMM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "gcm_error_code"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "gcm_error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method static a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1569
    if-nez p2, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1572
    :cond_0
    new-instance v0, Lcom/google/b/a/a/b;

    invoke-direct {v0}, Lcom/google/b/a/a/b;-><init>()V

    .line 1573
    invoke-virtual {v0, p1}, Lcom/google/b/a/a/b;->a(Ljava/lang/String;)Lcom/google/b/a/a/b;

    .line 1574
    invoke-virtual {v0, p2}, Lcom/google/b/a/a/b;->b(Ljava/lang/String;)Lcom/google/b/a/a/b;

    .line 1575
    invoke-virtual {p0, v0}, Lcom/google/b/a/a/e;->a(Lcom/google/b/a/a/b;)Lcom/google/b/a/a/e;

    goto :goto_0
.end method

.method private a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 3

    .prologue
    .line 1084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    iget-object v1, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    const-string v1, "message_type"

    const-string v2, "send_error"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    if-eqz p2, :cond_0

    .line 1089
    const-string v1, "google.message_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    :cond_0
    if-eqz p4, :cond_1

    .line 1093
    invoke-static {p4, v0}, Lcom/google/android/gms/gcm/g;->a(Landroid/os/Messenger;Landroid/content/Intent;)V

    .line 1098
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Intent;Lcom/google/b/a/a/e;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1618
    const-string v0, "GCM-DMM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    const-string v0, "GCM-DMM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->w:Lcom/google/android/gms/gcm/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/gcm/z;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/e;

    .line 1176
    const-string v2, "GCM-DMM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1177
    const-string v2, "GCM-DMM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending pending message to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/g;->c(Lcom/google/b/a/a/e;)V

    goto :goto_0

    .line 1181
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1584
    if-nez p1, :cond_0

    .line 1585
    const-string v0, "Should not happen. Received message with no package name."

    invoke-static {v0}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;)V

    .line 1615
    :goto_0
    return-void

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/gcm/aw;->b(Ljava/lang/String;I)Z

    .line 1592
    const-string v0, "GCM-DMM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unregister application "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget v0, p0, Lcom/google/android/gms/gcm/g;->t:I

    if-lez v0, :cond_1

    .line 1596
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1600
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    const-string v1, "app"

    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1603
    const-string v1, "gcm_unreg_caller"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v1, "app_gsf"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    const-string v1, "GOOG.USER_SERIAL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1607
    if-eqz p3, :cond_2

    .line 1608
    const-string v1, "GOOG.USER_AID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1611
    :cond_2
    const-string v1, "track_pkgs"

    iget v2, p0, Lcom/google/android/gms/gcm/g;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1613
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 1496
    new-instance v1, Lcom/google/b/a/a/e;

    invoke-direct {v1}, Lcom/google/b/a/a/e;-><init>()V

    .line 1498
    const-string v0, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v1, v0}, Lcom/google/b/a/a/e;->d(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 1499
    const-string v0, "app"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-string v0, "USN"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    const-string v0, "UAID"

    invoke-static {v1, v0, p3}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v0, "info"

    invoke-static {v1, v0, p4}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v2, "gcmr"

    if-eqz p5, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v0, "track_pkgs"

    iget v2, p0, Lcom/google/android/gms/gcm/g;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1509
    const-string v2, "ver"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const-string v2, "GCM-DMM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1512
    const-string v2, "GCM-DMM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendAppStatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    invoke-virtual {v0, v1}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    .line 1516
    return-void

    .line 1503
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 516
    if-lez p2, :cond_2

    .line 520
    invoke-static {p1, p2}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 525
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 526
    :cond_0
    const-string v1, "GCM-DMM"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "findReceiverForIntent: queryBroadcastReceivers took "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, found="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;)V

    .line 530
    :cond_1
    return v0

    .line 522
    :cond_2
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Lcom/google/b/a/a/e;Landroid/os/Messenger;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 968
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/g;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 969
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/gcm/j;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/gcm/j;-><init>(Lcom/google/android/gms/gcm/g;Lcom/google/b/a/a/e;Landroid/os/Messenger;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 980
    :goto_0
    return v0

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    invoke-virtual {v1}, Lcom/google/b/a/a;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 977
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    invoke-virtual {v1, p1}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 980
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 984
    .line 985
    const-string v0, "google.delay"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_0

    .line 987
    const-string v2, "google.delay"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 989
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 993
    :goto_0
    iget v2, p0, Lcom/google/android/gms/gcm/g;->d:I

    if-ge v0, v2, :cond_1

    .line 996
    :goto_1
    iget v0, p0, Lcom/google/android/gms/gcm/g;->e:I

    if-le v1, v0, :cond_0

    .line 997
    iget v1, p0, Lcom/google/android/gms/gcm/g;->e:I

    .line 1000
    :cond_0
    return v1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private d(Lcom/google/b/a/a/e;)Z
    .locals 6

    .prologue
    .line 1031
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->u:Lcom/google/android/gms/gcm/m;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/m;->a()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delayed message queue is full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0

    .line 1031
    :cond_0
    iget v1, p1, Lcom/google/b/a/a/e;->j:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/gcm/m;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget v1, p1, Lcom/google/b/a/a/e;->o:I

    iget-object v2, v0, Lcom/google/android/gms/gcm/m;->b:Lcom/google/android/gms/gcm/s;

    invoke-interface {v2}, Lcom/google/android/gms/gcm/s;->a()J

    move-result-wide v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/google/android/gms/gcm/m;->f:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/m;->c()V

    iput-wide v2, v0, Lcom/google/android/gms/gcm/m;->f:J

    iget-object v0, v0, Lcom/google/android/gms/gcm/m;->a:Lcom/google/android/gms/gcm/r;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/gcm/r;->a(J)V

    .line 1036
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1031
    :cond_3
    iget v1, v0, Lcom/google/android/gms/gcm/m;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/gcm/m;->d:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private f()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1040
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->u:Lcom/google/android/gms/gcm/m;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/m;->c()V

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/m;->a()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1041
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/e;

    .line 1042
    const-string v2, "GCM-DMM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    const-string v2, "GCM-DMM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending delayed message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-wide v4, v0, Lcom/google/b/a/a/e;->k:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/google/b/a/a/e;->f(I)Lcom/google/b/a/a/e;

    .line 1047
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Landroid/os/Messenger;)Z

    goto :goto_1

    .line 1040
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/gcm/m;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/gcm/m;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Lcom/google/android/gms/gcm/m;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    iget v2, v1, Lcom/google/android/gms/gcm/m;->d:I

    if-lez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/gcm/m;->c:Lcom/google/android/gms/gcm/t;

    new-instance v3, Lcom/google/android/gms/gcm/q;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/gcm/q;-><init>(Lcom/google/android/gms/gcm/m;Ljava/util/List;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/gcm/t;->a(Lcom/google/android/gms/gcm/bb;)V

    iget-object v2, v1, Lcom/google/android/gms/gcm/m;->b:Lcom/google/android/gms/gcm/s;

    invoke-interface {v2}, Lcom/google/android/gms/gcm/s;->a()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcom/google/android/gms/gcm/m;->g:J

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/gcm/m;->d:I

    goto :goto_0

    .line 1049
    :cond_4
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->w:Lcom/google/android/gms/gcm/z;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/z;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/e;

    .line 1185
    iget-object v2, v0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    .line 1186
    iget-wide v4, v0, Lcom/google/b/a/a/e;->i:J

    long-to-int v3, v4

    .line 1187
    const-string v4, "UAID"

    invoke-static {v0, v4}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->x:Lcom/google/android/gms/gcm/GcmPackageTracker;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/GcmPackageTracker;->c(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1190
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iget-object v1, v0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/a;->c()V

    iget-object v1, v0, Lcom/google/android/gms/gcm/bc;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 480
    return-void
.end method

.method final a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gcm_ttl"

    const v4, 0x15180

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/g;->a:I

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gcm_len"

    const/16 v4, 0x1000

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/g;->b:I

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gcm_upreg"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/g;->t:I

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gcm_delay_enable"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/gcm/g;->c:Z

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gcm_delay_min"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/g;->d:I

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gcm_delay_max"

    const/16 v4, 0xe10

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/g;->e:I

    .line 463
    sget-object v2, Lcom/google/android/gms/gcm/GcmPackageTracker;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/g;->f:I

    .line 464
    invoke-static {p1}, Lcom/google/android/gms/gcm/d;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/d;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gcm_tower_enable"

    invoke-static {v3, v4, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_1

    iput-boolean v1, v2, Lcom/google/android/gms/gcm/d;->a:Z

    .line 467
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 464
    goto :goto_0

    :cond_1
    iput-boolean v0, v2, Lcom/google/android/gms/gcm/d;->a:Z

    goto :goto_1
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 819
    const-string v0, "google.ttl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 820
    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 821
    const-string v0, "collapse_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 826
    const-string v0, "google.messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 827
    if-eqz v0, :cond_0

    .line 828
    const-string v1, "google.messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 832
    :cond_0
    :try_start_0
    const-string v1, "app"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/app/PendingIntent;

    if-eqz v5, :cond_2

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 834
    :goto_0
    if-nez v6, :cond_3

    .line 835
    const-string v0, "GCM-DMM"

    const-string v1, "Failed to send message - missing package name"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    .line 960
    :cond_1
    :goto_1
    return-void

    .line 832
    :cond_2
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    .line 839
    :cond_3
    :try_start_1
    const-string v1, "app"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 841
    new-instance v8, Lcom/google/b/a/a/e;

    invoke-direct {v8}, Lcom/google/b/a/a/e;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    if-eqz v2, :cond_1d

    .line 845
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 849
    :goto_2
    if-ltz v1, :cond_4

    :try_start_3
    iget v2, p0, Lcom/google/android/gms/gcm/g;->a:I

    if-le v1, v2, :cond_1c

    .line 850
    :cond_4
    iget v1, p0, Lcom/google/android/gms/gcm/g;->a:I

    move v5, v1

    .line 853
    :goto_3
    invoke-virtual {v8, v5}, Lcom/google/b/a/a/e;->c(I)Lcom/google/b/a/a/e;

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lcom/google/b/a/a/e;->b(J)Lcom/google/b/a/a/e;

    .line 856
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/g;->c(Landroid/content/Intent;)I

    move-result v9

    .line 857
    if-lez v9, :cond_5

    .line 858
    invoke-virtual {v8, v9}, Lcom/google/b/a/a/e;->e(I)Lcom/google/b/a/a/e;

    .line 861
    :cond_5
    if-eqz v7, :cond_6

    .line 862
    invoke-virtual {v8, v7}, Lcom/google/b/a/a/e;->a(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 865
    :cond_6
    if-eqz v4, :cond_7

    .line 866
    invoke-virtual {v8, v4}, Lcom/google/b/a/a/e;->e(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 867
    const-string v1, "collapse_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 870
    :cond_7
    const-string v1, "GOOG.USER_SERIAL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    if-eqz v1, :cond_8

    .line 873
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Lcom/google/b/a/a/e;->a(J)Lcom/google/b/a/a/e;

    .line 874
    const-string v1, "GOOG.USER_SERIAL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 875
    const-string v1, "GOOG.USER_AID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 880
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->y:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 881
    const-string v1, "AUTHENTICATION_FAILED"

    invoke-direct {p0, v8, v7, v1, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 956
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto :goto_1

    .line 847
    :catch_0
    move-exception v1

    move v1, v3

    goto :goto_2

    .line 886
    :cond_9
    :try_start_4
    const-string v1, "google.to"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 887
    if-nez v1, :cond_a

    .line 889
    const-string v1, "missing_to"

    invoke-direct {p0, v8, v7, v1, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 956
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto :goto_1

    .line 892
    :cond_a
    :try_start_5
    const-string v2, "google.to"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 895
    const-string v2, "registration_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 896
    const-string v4, "registration_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 897
    if-eqz v2, :cond_b

    .line 898
    invoke-virtual {v8, v2}, Lcom/google/b/a/a/e;->g(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 901
    :cond_b
    invoke-virtual {v8, v1}, Lcom/google/b/a/a/e;->c(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 902
    invoke-virtual {v8, v6}, Lcom/google/b/a/a/e;->d(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 904
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v4, v3

    :cond_c
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    instance-of v12, v2, Ljava/lang/String;

    if-eqz v12, :cond_d

    check-cast v2, Ljava/lang/String;

    invoke-static {v8, v1, v2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v4, v1

    goto :goto_4

    :cond_d
    instance-of v12, v2, [B

    if-eqz v12, :cond_e

    const-string v12, "rawData"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/b/a/a/e;->a(Lcom/google/protobuf/a/a;)Lcom/google/b/a/a/e;

    array-length v1, v2

    add-int/2addr v4, v1

    goto :goto_4

    :cond_e
    const-string v2, "GCM"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Ignoring "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 956
    :catchall_0
    move-exception v0

    move v1, v3

    :goto_5
    if-nez v1, :cond_f

    .line 957
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    :cond_f
    throw v0

    :cond_10
    move v1, v4

    .line 905
    :goto_6
    :try_start_6
    iget v2, p0, Lcom/google/android/gms/gcm/g;->b:I

    if-le v1, v2, :cond_11

    .line 906
    const-string v1, "MessageTooBig"

    invoke-direct {p0, v8, v7, v1, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 956
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto/16 :goto_1

    .line 910
    :cond_11
    if-eqz v5, :cond_12

    if-eqz v7, :cond_12

    const/4 v1, 0x1

    move v2, v1

    .line 911
    :goto_7
    if-eqz v2, :cond_15

    .line 912
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->l:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/au;->c()Z

    move-result v1

    if-nez v1, :cond_13

    .line 916
    const-string v1, "TtlUnsupported"

    invoke-direct {p0, v8, v7, v1, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 956
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto/16 :goto_1

    :cond_12
    move v2, v3

    .line 910
    goto :goto_7

    .line 920
    :cond_13
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/gcm/ay;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 921
    const-string v1, "TooManyMessages"

    invoke-direct {p0, v8, v7, v1, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 956
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto/16 :goto_1

    .line 925
    :cond_14
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/gcm/ay;->a(Lcom/google/protobuf/a/f;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 930
    :try_start_a
    invoke-static {v0}, Lcom/google/android/gms/gcm/g;->a(Landroid/os/Messenger;)V

    .line 933
    :cond_15
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/g;->c:Z

    if-eqz v1, :cond_18

    .line 934
    if-lez v9, :cond_17

    invoke-direct {p0, v8}, Lcom/google/android/gms/gcm/g;->d(Lcom/google/b/a/a/e;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 936
    const-string v0, "GCM-DMM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 937
    const-string v0, "GCM-DMM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delaying message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 956
    :cond_16
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto/16 :goto_1

    .line 927
    :catch_1
    move-exception v1

    :try_start_b
    const-string v1, "save_error"

    invoke-direct {p0, v8, v7, v1, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 956
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto/16 :goto_1

    .line 942
    :cond_17
    :try_start_c
    invoke-direct {p0}, Lcom/google/android/gms/gcm/g;->f()V

    .line 945
    :cond_18
    invoke-direct {p0, v8, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Landroid/os/Messenger;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v1

    .line 946
    if-nez v1, :cond_19

    .line 947
    if-eqz v2, :cond_1a

    .line 948
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Queued GCM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 956
    :cond_19
    :goto_8
    if-nez v1, :cond_1

    .line 957
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    goto/16 :goto_1

    .line 951
    :cond_1a
    :try_start_e
    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v8, v7, v2, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_8

    .line 956
    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_1b
    move v1, v3

    goto/16 :goto_6

    :cond_1c
    move v5, v1

    goto/16 :goto_3

    :cond_1d
    move v5, v3

    goto/16 :goto_3
.end method

.method protected final a(Landroid/content/Intent;Lcom/google/b/a/a/e;I)V
    .locals 6

    .prologue
    .line 343
    if-nez p3, :cond_0

    .line 344
    const-string v0, "GCM-DMM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "broadcast intent callback: result=CANCELLED for"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 351
    iget-wide v2, p2, Lcom/google/b/a/a/e;->i:J

    long-to-int v2, v2

    .line 352
    if-eqz v1, :cond_0

    int-to-long v4, v2

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    long-to-int v3, v4

    invoke-static {v0, p1, v3}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 353
    iget v0, p0, Lcom/google/android/gms/gcm/g;->f:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->x:Lcom/google/android/gms/gcm/GcmPackageTracker;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/GcmPackageTracker;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->w:Lcom/google/android/gms/gcm/z;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/gcm/z;->a(Lcom/google/b/a/a/e;)V

    .line 367
    :cond_0
    :goto_1
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_2
    const-string v0, "UAID"

    invoke-static {p2, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/gcm/au;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/gms/gcm/g;->l:Lcom/google/android/gms/gcm/au;

    .line 471
    return-void
.end method

.method public final a(Lcom/google/b/a/a;)V
    .locals 1

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    .line 484
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->r:Lcom/google/android/gms/gcm/bf;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->r:Lcom/google/android/gms/gcm/bf;

    iput-object p1, v0, Lcom/google/android/gms/gcm/bf;->b:Lcom/google/b/a/a;

    .line 487
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/android/gms/gcm/g;->z:Ljava/lang/String;

    .line 475
    iput-object p2, p0, Lcom/google/android/gms/gcm/g;->y:Ljava/lang/String;

    .line 476
    return-void
.end method

.method final a(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/android/gms/gcm/g;->q:Lorg/apache/http/client/HttpClient;

    .line 491
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iput-boolean p1, v0, Lcom/google/android/gms/gcm/bc;->h:Z

    .line 1683
    return-void
.end method

.method public final a(Lcom/google/b/a/a/e;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 622
    iget v1, p1, Lcom/google/b/a/a/e;->j:I

    if-nez v1, :cond_0

    .line 632
    :goto_0
    return v0

    .line 625
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 626
    iget-wide v4, p1, Lcom/google/b/a/a/e;->k:J

    iget v1, p1, Lcom/google/b/a/a/e;->j:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 627
    iget-object v1, p1, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    const-string v2, "SERVICE_NOT_AVAILABLE"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_0

    .line 632
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/b/a/a/e;Landroid/os/Messenger;Z)Z
    .locals 9

    .prologue
    const/16 v4, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 708
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 709
    iget-object v0, p1, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    const-string v1, "AUTHENTICATION_FAILED"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 711
    iget v0, p1, Lcom/google/b/a/a/e;->j:I

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    iget-object v1, p1, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/ay;->a(Ljava/lang/String;)I

    :cond_0
    move v0, v6

    .line 810
    :goto_0
    return v0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "d2c_url"

    const-string v2, "https://android.clients.google.com/gcm/upstream"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 720
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AidLogin "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p1, Lcom/google/b/a/a/e;->c:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 725
    const-string v0, "project_id"

    iget-object v1, p1, Lcom/google/b/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/b/a/a/e;->k:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/e;->d(I)Lcom/google/b/a/a/e;

    .line 733
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    instance-of v0, v0, Lcom/google/android/gms/gcm/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    sget-object v0, Lcom/google/android/gms/gcm/b;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    const-string v0, "out"

    invoke-static {v0, p1}, Lcom/google/android/gms/gcm/b;->a(Ljava/lang/String;Lcom/google/protobuf/a/f;)V

    .line 738
    :cond_3
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lcom/google/b/a/a/e;->g()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 739
    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->q:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 744
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 746
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 747
    const/16 v0, 0x191

    if-ne v5, v0, :cond_7

    const/16 v0, 0x193

    if-ne v5, v0, :cond_7

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/g;->y:Ljava/lang/String;

    .line 751
    iget-object v0, p1, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    const-string v1, "AUTHENTICATION_FAILED"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 753
    iget v0, p1, Lcom/google/b/a/a/e;->j:I

    if-eqz v0, :cond_4

    .line 755
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    iget-object v1, p1, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/ay;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 786
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    .line 790
    :cond_5
    :try_start_1
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_6

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 802
    :cond_6
    :goto_2
    iget v0, p1, Lcom/google/b/a/a/e;->j:I

    if-nez v0, :cond_f

    .line 803
    iget-object v0, p1, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    :goto_3
    move v0, v7

    .line 810
    goto/16 :goto_0

    .line 757
    :cond_7
    if-eq v5, v4, :cond_9

    .line 758
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sent http error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {p1}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/b/a/a;->a(ZILjava/lang/String;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 781
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sent http io error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 785
    if-eqz p3, :cond_8

    .line 786
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    .line 790
    :cond_8
    :try_start_4
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_6

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 797
    :catch_1
    move-exception v0

    goto :goto_2

    .line 764
    :cond_9
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sent http "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {p1}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/google/b/a/a;->a(ZILjava/lang/String;II)V

    .line 769
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/g;->b(Lcom/google/b/a/a/e;)V

    .line 771
    iget v0, p1, Lcom/google/b/a/a/e;->j:I

    if-eqz v0, :cond_c

    .line 773
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    iget-object v1, p1, Lcom/google/b/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/ay;->a(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 778
    :goto_4
    if-eqz p3, :cond_a

    .line 786
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    .line 790
    :cond_a
    :try_start_6
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_b

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_b
    :goto_5
    move v0, v6

    .line 796
    goto/16 :goto_0

    .line 776
    :cond_c
    :try_start_7
    iget-object v0, p1, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/gcm/g;->a(Landroid/os/Messenger;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 785
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_d

    .line 786
    invoke-static {}, Lcom/google/android/gms/gcm/GcmSenderProxy;->a()V

    .line 790
    :cond_d
    :try_start_8
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 791
    if-eqz v1, :cond_e

    .line 792
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 796
    :cond_e
    :goto_6
    throw v0

    .line 807
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/g;->c()V

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto :goto_6

    .line 797
    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    goto :goto_5
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 500
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->n:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 502
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final b(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1448
    const-string v0, "cmt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1450
    const-string v0, "cmt_ht"

    const-string v1, "cmt"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    invoke-static {}, Lcom/google/android/gms/gcm/http/a;->a()Lcom/google/android/gms/gcm/http/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iget-wide v0, v2, Lcom/google/android/gms/gcm/http/a;->e:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-wide v0, v2, Lcom/google/android/gms/gcm/http/a;->e:J

    :goto_0
    cmp-long v5, v0, v6

    if-ltz v5, :cond_3

    const-wide/32 v6, 0x5265c00

    cmp-long v5, v0, v6

    if-gtz v5, :cond_3

    const-string v5, "bp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v0

    iput-wide v6, v2, Lcom/google/android/gms/gcm/http/a;->a:J

    iput-object v4, v2, Lcom/google/android/gms/gcm/http/a;->b:Ljava/lang/String;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "GCM.HTTP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Enabling HTTP moratorium for duration: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.http.intent.moratorium"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "untilElapsedRealtime"

    iget-wide v4, v2, Lcom/google/android/gms/gcm/http/a;->a:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "prefixToBlock"

    iget-object v2, v2, Lcom/google/android/gms/gcm/http/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1485
    :cond_0
    :goto_1
    return-void

    .line 1452
    :cond_1
    const-string v0, "mds"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    const-string v2, "GCM.HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring HTTP moratorium control message with missing or invalid moratorium duration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1455
    :cond_4
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1456
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1460
    :try_start_1
    const-string v0, "USN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1461
    const-string v2, "UAID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1462
    const-string v2, "info"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1463
    const-string v2, "gcm_unreg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1465
    if-nez v0, :cond_6

    const/4 v2, 0x0

    .line 1466
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1473
    iget-object v5, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/gcm/aw;->b(Ljava/lang/String;I)Z

    .line 1478
    :cond_5
    iget-object v5, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v5, v0, v2}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v5

    move-object v0, p0

    .line 1480
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1482
    :catch_0
    move-exception v0

    const-string v0, "GCM-DMM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1465
    :cond_6
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_2
.end method

.method final b(Lcom/google/b/a/a/e;)V
    .locals 3

    .prologue
    .line 1109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    iget-object v1, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string v1, "event"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v1, "message_type"

    const-string v2, "send_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    const-string v1, "google.message_id"

    iget-object v2, p1, Lcom/google/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Intent;Lcom/google/b/a/a/e;)V

    .line 1116
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/g;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ay;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->l:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->d()V

    goto :goto_0
.end method

.method public final c(Lcom/google/b/a/a/e;)V
    .locals 6

    .prologue
    .line 1136
    iget-object v2, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    .line 1140
    const-string v0, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1141
    iget-object v0, p1, Lcom/google/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/b;

    iget-object v2, v0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    const-string v3, "UFS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->r:Lcom/google/android/gms/gcm/bf;

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/gcm/bf;->c:Z

    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->r:Lcom/google/android/gms/gcm/bf;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/gcm/bf;->a(Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/google/b/a/a/e;

    invoke-direct {v4}, Lcom/google/b/a/a/e;-><init>()V

    const-string v0, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v4, v0}, Lcom/google/b/a/a/e;->d(Ljava/lang/String;)Lcom/google/b/a/a/e;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/google/android/gms/gcm/bf;->b:Lcom/google/b/a/a;

    invoke-virtual {v0, v4}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    .line 1170
    :cond_2
    :goto_1
    return-void

    .line 1141
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/bc;->a(Lcom/google/b/a/a/e;)V

    goto :goto_1

    .line 1145
    :cond_4
    iget-object v3, p1, Lcom/google/b/a/a/e;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "GCM-DMM"

    const-string v1, "found msg w/o category, dropping"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1146
    :goto_2
    if-nez v0, :cond_a

    .line 1147
    const-string v0, "GCM-DMM"

    const-string v1, "processPacket: cannot parse data message "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1145
    :cond_5
    const-string v1, "GSYNC_TICKLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "com.google.android.gsf.subscribedfeeds"

    :cond_6
    iget-wide v4, p1, Lcom/google/b/a/a/e;->i:J

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/gcm/g;->k:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string v0, "from"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p1, Lcom/google/b/a/a/e;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/b/a/a/e;->m:Lcom/google/protobuf/a/a;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/b/a/a/e;->m:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->a()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "rawData"

    iget-object v3, p1, Lcom/google/b/a/a/e;->m:Lcom/google/protobuf/a/a;

    invoke-virtual {v3}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_7
    iget-object v0, p1, Lcom/google/b/a/a/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "collapse_key"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1150
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Landroid/content/Intent;)V

    .line 1152
    iget-object v1, p1, Lcom/google/b/a/a/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "registration_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    :cond_b
    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1156
    const-string v1, "gcms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1157
    const-string v2, "gcm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1158
    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/g;->b(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1163
    :cond_c
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Intent;Lcom/google/b/a/a/e;)V

    .line 1167
    iget v0, p0, Lcom/google/android/gms/gcm/g;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1168
    invoke-direct {p0}, Lcom/google/android/gms/gcm/g;->g()V

    goto/16 :goto_1
.end method

.method final d()I
    .locals 5

    .prologue
    .line 645
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 646
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 647
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 649
    iget-object v3, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    new-instance v4, Lcom/google/android/gms/gcm/i;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/google/android/gms/gcm/i;-><init>(Lcom/google/android/gms/gcm/g;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/gcm/ay;->a(Lcom/google/android/gms/gcm/bb;)V

    .line 666
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/gcm/ay;->a(Ljava/util/List;)I

    .line 670
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " err: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " unsent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->s:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/ay;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->l:Lcom/google/android/gms/gcm/au;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/au;->b(Z)V

    .line 680
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/g;->c()V

    .line 681
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1625
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1627
    const-string v1, "GCM-DMM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    const-string v1, "GCM-DMM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataMessageManager receive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1631
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/bc;->b()V

    .line 1679
    :cond_1
    :goto_0
    return-void

    .line 1632
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1636
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/bc;->d()V

    goto :goto_0

    .line 1637
    :cond_4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1639
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/gcm/bc;->a:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isKeyguardLocked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/gcm/bc;->a:Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/bc;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1640
    :cond_6
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1641
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/gcm/bc;->h:Z

    .line 1642
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iget-boolean v0, v0, Lcom/google/android/gms/gcm/bc;->f:Z

    if-eqz v0, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/bc;->c()V

    goto :goto_0

    .line 1645
    :cond_7
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1646
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iput-boolean v4, v0, Lcom/google/android/gms/gcm/bc;->h:Z

    .line 1647
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iget-boolean v0, v0, Lcom/google/android/gms/gcm/bc;->f:Z

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/bc;->c()V

    goto :goto_0

    .line 1650
    :cond_8
    const-string v1, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1651
    const-string v0, "isActive"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1652
    const-string v1, "deviceType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1654
    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iput-boolean v0, v2, Lcom/google/android/gms/gcm/bc;->i:Z

    .line 1656
    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/gcm/f;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    iget-boolean v0, v0, Lcom/google/android/gms/gcm/bc;->f:Z

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->g:Lcom/google/android/gms/gcm/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/bc;->c()V

    goto/16 :goto_0

    .line 1660
    :cond_9
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.intent.action.USER_STOPPING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1665
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->r:Lcom/google/android/gms/gcm/bf;

    if-eqz v0, :cond_1

    .line 1666
    iget-object v0, p0, Lcom/google/android/gms/gcm/g;->r:Lcom/google/android/gms/gcm/bf;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/gms/gcm/bf;->a(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1668
    :cond_b
    const-string v1, "com.google.android.gms.gcm.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1669
    iget v0, p0, Lcom/google/android/gms/gcm/g;->f:I

    if-ne v0, v5, :cond_1

    .line 1670
    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_serial"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1674
    :cond_c
    const-string v1, "com.google.android.gms.gcm.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_serial"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/gcm/g;->f:I

    if-ne v2, v5, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/gcm/g;->w:Lcom/google/android/gms/gcm/z;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/gcm/z;->a(Ljava/lang/String;I)Ljava/util/List;

    :cond_d
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

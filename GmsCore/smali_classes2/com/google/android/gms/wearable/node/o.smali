.class public final Lcom/google/android/gms/wearable/node/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/android/gms/wearable/node/m;

.field final c:Landroid/content/SharedPreferences;

.field final d:Ljava/lang/Object;

.field e:Z

.field f:J

.field g:I

.field h:J

.field i:Lcom/google/android/gms/wearable/node/x;

.field j:Lcom/google/android/gms/wearable/node/p;

.field private final k:Lcom/google/android/gms/wearable/node/p;

.field private final l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/wearable/node/m;Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/gms/wearable/node/p;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/wearable/node/p;-><init>(Lcom/google/android/gms/wearable/node/o;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/o;->k:Lcom/google/android/gms/wearable/node/p;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/o;->l:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    .line 71
    iput-wide v4, p0, Lcom/google/android/gms/wearable/node/o;->h:J

    .line 78
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/o;->b:Lcom/google/android/gms/wearable/node/m;

    .line 79
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/o;->a:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lcom/google/android/gms/wearable/node/o;->e:Z

    .line 81
    iput-object p3, p0, Lcom/google/android/gms/wearable/node/o;->c:Landroid/content/SharedPreferences;

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/o;->f:J

    .line 83
    iput v2, p0, Lcom/google/android/gms/wearable/node/o;->g:I

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->k:Lcom/google/android/gms/wearable/node/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/p;->a(Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/o;->e:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/o;->i:Lcom/google/android/gms/wearable/node/x;

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/p;->a(Z)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->l:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    .line 125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connection to peer node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "peer seqId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/o;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "peerStatePersistenceAttempt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/wearable/node/o;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V

    .line 294
    const-string v0, "Total"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->k:Lcom/google/android/gms/wearable/node/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/node/p;->a(Lcom/google/android/gms/wearable/d/d;)V

    .line 296
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 298
    const-string v0, "Current "

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/node/p;->a(Lcom/google/android/gms/wearable/d/d;)V

    .line 304
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 305
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 309
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 310
    const-string v0, "Historic "

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/o;->l:Ljava/util/ArrayList;

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/node/p;->a(Lcom/google/android/gms/wearable/d/d;)V

    .line 312
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 302
    :cond_0
    :try_start_1
    const-string v0, "[not connected]"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 314
    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/gms/wearable/node/x;Lcom/google/android/gms/wearable/c/r;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 261
    const-string v0, "datatransport"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "datatransport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendDataItemToPeer(SetDataItem): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 265
    iput-object p2, v0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/o;->j:Lcom/google/android/gms/wearable/node/p;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/p;->a()V

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/o;->k:Lcom/google/android/gms/wearable/node/p;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/p;->a()V

    .line 271
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/wearable/node/x;->a(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :cond_2
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    const-string v1, "datatransport"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    const-string v1, "datatransport"

    const-string v2, "  exception while sending dataItem to peer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    .line 279
    const-string v1, "datatransport"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    const-string v1, "datatransport"

    const-string v2, "  exception while sending dataItem to peer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

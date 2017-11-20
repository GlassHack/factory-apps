.class public final Lcom/google/android/gms/wearable/node/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/wearable/service/b;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Lcom/google/android/gms/wearable/node/ay;

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/content/SharedPreferences;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->f:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->c:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/google/android/gms/wearable/service/b;

    invoke-static {p1}, Lcom/google/android/gms/wearable/service/a;->a(Landroid/content/Context;)Lcom/google/android/gms/wearable/service/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/service/b;-><init>(Lcom/google/android/gms/wearable/service/a;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/a/a;->g:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method

.method public static c(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Lcom/google/android/gms/wearable/ConnectionConfiguration;
    .locals 6

    .prologue
    const/4 v1, 0x2

    .line 279
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 281
    const-string v0, "WearableConn"

    const-string v1, "adding a name to a ROLE_SERVER config that has no name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    const-string v1, "server"

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 290
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 285
    const-string v0, "WearableConn"

    const-string v1, "adding a name to a CONNECTION_TYPE_NETWORK config that has no name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    const-string v1, "network"

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 3

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/a/a;->d:Z

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/a/a;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "WearableConn"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "WearableConn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting conn service for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/node/a/a;->b(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WearableApp installed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/wearable/node/a/a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/wearable/node/a/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 298
    const-string v0, "======"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 299
    const-string v0, "Connection Configurations: "

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Config: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 305
    const-string v0, "======"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 307
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/a/a;->b()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/service/b;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 97
    const-string v0, "WearableConn"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "WearableConn"

    const-string v1, "setConnectionEnabled did not find a config to update."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "connectionEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_2

    move-object v5, p1

    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/wearable/service/b;->a:Lcom/google/android/gms/wearable/service/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "connectionConfigurations"

    const-string v3, "name=?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/service/b;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v0

    .line 105
    if-eqz p2, :cond_3

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/node/a/a;->a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    .line 108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_1
    return-void

    .line 103
    :cond_2
    const-string v0, "NULL_STRING"

    move-object v5, v0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/node/a/a;->b(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "connection_disable"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/a/a;->b()V

    .line 139
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/a/a;->i:Z

    if-eq v0, p1, :cond_0

    .line 141
    iput-boolean p1, p0, Lcom/google/android/gms/wearable/node/a/a;->i:Z

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/a/a;->c()V

    .line 144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()[Lcom/google/android/gms/wearable/ConnectionConfiguration;
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/a/a;->b()V

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/b;->a()Ljava/util/List;

    move-result-object v1

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/a/a;->e:Lcom/google/android/gms/wearable/node/ay;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/wearable/ConnectionConfiguration;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 219
    const-string v1, "run_as_server"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v1, "connection_config"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    .prologue
    .line 165
    iget-object v6, p0, Lcom/google/android/gms/wearable/node/a/a;->f:Ljava/lang/Object;

    monitor-enter v6

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/a/a;->h:Z

    if-eqz v0, :cond_0

    .line 167
    monitor-exit v6

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 171
    iget-object v5, p0, Lcom/google/android/gms/wearable/node/a/a;->g:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    const-string v1, "paired_bt_name"

    const/4 v2, 0x0

    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "paired_bt_address"

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "connection_type"

    const/4 v4, 0x0

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "side"

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "connection_desired"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c()I

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/wearable/service/b;->a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    .line 180
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/a/a;->h:Z

    .line 181
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/a/a;->d:Z

    if-nez v0, :cond_1

    .line 197
    :cond_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/wearable/node/emulator/NetworkConnectionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/node/a/a;->a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    goto :goto_0
.end method

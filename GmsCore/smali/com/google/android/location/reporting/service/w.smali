.class final Lcom/google/android/location/reporting/service/w;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 125
    return-void
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 131
    const-string v0, "GCoreUlr"

    invoke-static {v0, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPerformSync() called: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    const-string v0, "GCoreUlr"

    invoke-static {v0, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Aborting sync for unsupported OS, account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "initialize"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-static {p1}, Lcom/google/android/location/reporting/service/ReportingSyncService;->b(Landroid/accounts/Account;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/location/reporting/service/w;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/google/android/location/reporting/service/s;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/service/s;-><init>(Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/location/reporting/service/s;->a(Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "GCoreUlr"

    invoke-static {v1, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    const-string v1, "GCoreUlr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :cond_4
    iget-object v1, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 161
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->d(Ljava/lang/Exception;)V

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    const-string v1, "GCoreUlr"

    invoke-static {v1, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    const-string v1, "GCoreUlr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :cond_5
    iget-object v1, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 167
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->d(Ljava/lang/Exception;)V

    goto :goto_0
.end method

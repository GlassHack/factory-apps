.class final Lcom/google/android/gms/checkin/aa;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/checkin/EventLogService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/EventLogService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    iput-object p2, p0, Lcom/google/android/gms/checkin/aa;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    invoke-virtual {v0}, Lcom/google/android/gms/checkin/EventLogService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    const-string v1, "EventLogService"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/checkin/EventLogService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/checkin/EventLogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DropBoxManager;

    .line 127
    invoke-static {}, Lcom/google/android/gms/checkin/EventLogService;->a()Lcom/google/android/gms/checkin/i;

    move-result-object v9

    monitor-enter v9

    .line 128
    :try_start_0
    const-string v0, "lastLog"

    invoke-static {v8, v0}, Lcom/google/android/gms/checkin/EventLogService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v2

    .line 129
    const-string v0, "lastData"

    invoke-static {v8, v0}, Lcom/google/android/gms/checkin/EventLogService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 132
    :try_start_1
    const-string v0, "EventLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Aggregate from "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " (log), "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " (data)"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/google/android/gms/checkin/EventLogService;->a()Lcom/google/android/gms/checkin/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/checkin/aa;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/checkin/i;->a(Landroid/content/Context;JJLandroid/os/DropBoxManager;)J

    move-result-wide v0

    .line 135
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 136
    const-string v3, "lastLog"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastData"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    const-class v1, Lcom/google/android/gms/checkin/ab;

    monitor-enter v1

    .line 143
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dumpsys:"

    aput-object v3, v0, v2

    invoke-static {v7, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    const-string v3, "dump.tmp"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/checkin/EventLogService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/google/android/gms/checkin/ab;->a(Ljava/util/Map;Landroid/os/DropBoxManager;Ljava/io/File;)V

    .line 146
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_4
    const-string v1, "EventLogService"

    const-string v2, "Can\'t aggregate logs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 146
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/checkin/aa;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    invoke-static {v0}, Lcom/google/android/gms/checkin/EventLogService;->a(Lcom/google/android/gms/checkin/EventLogService;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/a/a;

    iget-object v1, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    const-string v2, "EventLogService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/checkin/EventLogService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/a;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcom/android/a/a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    invoke-static {v0}, Lcom/google/android/gms/checkin/EventLogService;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/checkin/aa;->b:Lcom/google/android/gms/checkin/EventLogService;

    invoke-virtual {v0}, Lcom/google/android/gms/checkin/EventLogService;->stopSelf()V

    return-void
.end method

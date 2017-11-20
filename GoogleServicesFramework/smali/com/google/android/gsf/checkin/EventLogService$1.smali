.class Lcom/google/android/gsf/checkin/EventLogService$1;
.super Landroid/os/AsyncTask;
.source "EventLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogService;

.field final synthetic val$parentContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    iput-object p2, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->val$parentContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/EventLogService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    invoke-virtual {v2}, Lcom/google/android/gsf/checkin/EventLogService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 117
    .local v11, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v3, "EventLogService"

    const/4 v15, 0x0

    invoke-virtual {v2, v3, v15}, Lcom/google/android/gsf/checkin/EventLogService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 118
    .local v14, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v3, "dropbox"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/checkin/EventLogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/DropBoxManager;

    .line 120
    .local v8, "dropbox":Landroid/os/DropBoxManager;
    invoke-static {}, Lcom/google/android/gsf/checkin/EventLogService;->access$100()Lcom/google/android/gsf/checkin/EventLogAggregator;

    move-result-object v15

    monitor-enter v15

    .line 121
    :try_start_0
    const-string v2, "lastLog"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v14, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 122
    .local v4, "lastLog":J
    const-string v2, "lastData"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v14, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 125
    .local v6, "lastData":J
    :try_start_1
    const-string v2, "EventLogService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Aggregate from "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, " (log), "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, " (data)"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/google/android/gsf/checkin/EventLogService;->access$100()Lcom/google/android/gsf/checkin/EventLogAggregator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/EventLogService$1;->val$parentContext:Landroid/content/Context;

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gsf/checkin/EventLogAggregator;->aggregate(Landroid/content/Context;JJLandroid/os/DropBoxManager;)J

    move-result-wide v9

    .line 128
    .local v9, "bookmark":J
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 129
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "lastLog"

    invoke-interface {v13, v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastData"

    invoke-interface {v2, v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v9    # "bookmark":J
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    const-class v3, Lcom/google/android/gsf/checkin/ServiceDumpSys;

    monitor-enter v3

    .line 136
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "dumpsys:"

    aput-object v16, v2, v15

    invoke-static {v11, v2}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v16, "dump.tmp"

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gsf/checkin/EventLogService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-static {v2, v8, v15}, Lcom/google/android/gsf/checkin/ServiceDumpSys;->dumpServices(Ljava/util/Map;Landroid/os/DropBoxManager;Ljava/io/File;)V

    .line 139
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    const/4 v2, 0x0

    return-object v2

    .line 130
    :catch_0
    move-exception v12

    .line 131
    .local v12, "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "EventLogService"

    const-string v3, "Can\'t aggregate logs"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    .end local v4    # "lastLog":J
    .end local v6    # "lastData":J
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 139
    .restart local v4    # "lastLog":J
    .restart local v6    # "lastData":J
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/EventLogService$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Void;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/EventLogService;->access$202(Lcom/google/android/gsf/checkin/EventLogService;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 147
    new-instance v0, Lcom/android/common/OperationScheduler;

    iget-object v1, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    const-string v2, "EventLogService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/checkin/EventLogService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 148
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    invoke-static {v0}, Lcom/google/android/gsf/checkin/EventLogService;->access$000(Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService$1;->this$0:Lcom/google/android/gsf/checkin/EventLogService;

    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/EventLogService;->stopSelf()V

    .line 150
    return-void
.end method

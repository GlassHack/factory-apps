.class Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;
.super Landroid/os/AsyncTask;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastDownloadBytes:J

.field private mLastDownloadStatus:I

.field private mProvisioned:Z

.field private mRequiredSetup:Z

.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 419
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 422
    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    .line 423
    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mRequiredSetup:Z

    .line 1118
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/update/SystemUpdateService;
    .param p2, "x1"    # Lcom/google/android/gsf/update/SystemUpdateService$1;

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;)V

    return-void
.end method

.method private cancelUpdate()V
    .locals 5

    .prologue
    .line 1013
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1014
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1016
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1017
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1018
    const-string v2, "SystemUpdateService"

    const-string v4, "cancelUpdate: cancelling verifier"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->cancel(Z)Z

    .line 1020
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 1022
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 1026
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_approved"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "install_approved"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "url"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "url_change"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_mobile"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filename"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_id"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "verified"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "install_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "started_download"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pending_filename"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "success_message"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "failure_message"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "verify_progress"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "status"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1044
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.glass.update.UPDATE_AVAILABLE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1045
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.update.CANCEL_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1049
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 1050
    return-void

    .line 1022
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private checkDownload(Ljava/lang/String;I)Z
    .locals 25
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "urgency"    # I

    .prologue
    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isMobileDownloadAllowedNow()Z

    move-result v8

    .line 737
    .local v8, "mobileAllowed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/update/Download;->getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;

    move-result-object v13

    .line 738
    .local v13, "info":Lcom/google/android/gsf/update/Download$StatusInfo;
    if-nez v13, :cond_5

    .line 739
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting download of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-wide/16 v18, 0x0

    .line 746
    .local v18, "retry":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 747
    .local v12, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v8, :cond_3

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_download_watchdog_sec"

    const v7, 0x15180

    invoke-static {v4, v5, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 755
    .local v20, "watchdogSec":I
    if-lez v20, :cond_0

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move/from16 v0, v20

    mul-int/lit16 v7, v0, 0x3e8

    int-to-long v0, v7

    move-wide/from16 v23, v0

    add-long v21, v4, v23

    .line 757
    .local v21, "when":J
    const-string v4, "watchdog_deadline"

    move-wide/from16 v0, v21

    invoke-interface {v12, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 758
    move-wide/from16 v18, v21

    .line 763
    .end local v20    # "watchdogSec":I
    .end local v21    # "when":J
    :cond_0
    :goto_0
    const-string v4, "download_mobile"

    invoke-interface {v12, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 764
    if-nez v8, :cond_1

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService;->whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v21

    .line 766
    .restart local v21    # "when":J
    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-lez v4, :cond_1

    cmp-long v4, v21, v18

    if-gez v4, :cond_1

    .line 767
    move-wide/from16 v18, v21

    .line 770
    .end local v21    # "when":J
    :cond_1
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 771
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_2

    .line 772
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    .line 775
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_token"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 776
    .local v6, "update_token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->getAllowRoaming(I)Z

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->getAllowUnplugged(I)Z

    move-result v9

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gsf/update/Download;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/update/Download;->getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;

    move-result-object v13

    .line 783
    if-nez v13, :cond_4

    .line 784
    const-string v4, "SystemUpdateService"

    const-string v5, "just-started download disappeared"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 786
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    .line 787
    const/4 v4, 0x0

    .line 928
    .end local v6    # "update_token":Ljava/lang/String;
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "retry":J
    :goto_1
    return v4

    .line 761
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v18    # "retry":J
    :cond_3
    const-string v4, "watchdog_deadline"

    invoke-interface {v12, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 789
    .restart local v6    # "update_token":Ljava/lang/String;
    :cond_4
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download is active: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 792
    iget-wide v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "status"

    const/4 v7, 0x2

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "download_id"

    iget-wide v0, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "verified"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 798
    const/4 v4, 0x1

    goto :goto_1

    .line 800
    .end local v6    # "update_token":Ljava/lang/String;
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "retry":J
    :cond_5
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download in progress: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/android/gsf/update/Download$StatusInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 802
    iget-wide v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 805
    iget-boolean v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    if-nez v4, :cond_8

    .line 808
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "download_mobile"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 813
    const-string v4, "SystemUpdateService"

    const-string v5, "non-mobile download took too long; will retry allowing mobile"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 815
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkDownload(Ljava/lang/String;I)Z

    move-result v4

    goto/16 :goto_1

    .line 818
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "watchdog_deadline"

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 819
    .local v10, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-lez v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_7

    .line 820
    const-string v4, "SystemUpdateService"

    const-string v5, "download took too long; will cancel and retry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 822
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    .line 823
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 825
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 828
    .end local v10    # "deadline":J
    :cond_8
    iget-boolean v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->successful:Z

    if-nez v4, :cond_9

    .line 830
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download failed (reason = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    .line 832
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 835
    :cond_9
    iget-object v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 836
    const-string v4, "SystemUpdateService"

    const-string v5, "download completed but no filename available"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    .line 838
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 841
    :cond_a
    iget-wide v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "download_id"

    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    invoke-interface {v7, v9, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    cmp-long v4, v4, v23

    if-nez v4, :cond_b

    iget-object v4, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "filename"

    const/4 v9, 0x0

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 843
    :cond_b
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download id now "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v0, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; filename now "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "filename"

    iget-object v7, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "download_id"

    iget-wide v0, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "verified"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 850
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 851
    const-string v4, "SystemUpdateService"

    const-string v7, "checkDownload: cancelling verifier"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->cancel(Z)Z

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 855
    :cond_c
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 860
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "verified"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 862
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 863
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "verified"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 865
    const-string v4, "SystemUpdateService"

    const-string v5, "file has been verified"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkFile()Ljava/lang/String;

    .line 867
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isOkToInstallNow(IJ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->install()V

    .line 869
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 855
    .end local v16    # "now":J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 863
    .restart local v16    # "now":J
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 871
    :cond_e
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 875
    sget-boolean v4, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-nez v4, :cond_f

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "next_dialog"

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 877
    .restart local v21    # "when":J
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "when = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v21

    if-gez v4, :cond_10

    .line 879
    const v4, 0x7f09003b

    const v5, 0x7f09003d

    const v7, 0x7f02004f

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 883
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    .line 912
    .end local v21    # "when":J
    :cond_f
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 885
    .restart local v21    # "when":J
    :cond_10
    new-instance v14, Landroid/content/Intent;

    const-string v4, "com.google.glass.update.UPDATE_AVAILABLE"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_dialog_message"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 888
    .local v15, "message":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 889
    const-string v15, "Unknown Update"

    .line 891
    :cond_11
    const-string v4, "update_dialog_message"

    invoke-virtual {v14, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1500()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 893
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update has been disabled because the following file was found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1500()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Please delete this file and reboot to trigger"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " an update."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 899
    :cond_12
    const-string v4, "SystemUpdateService"

    const-string v5, "Sending Intent to Glass."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4, v14}, Lcom/google/android/gsf/update/SystemUpdateService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 906
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "message":Ljava/lang/String;
    .end local v21    # "when":J
    :cond_13
    const-string v4, "SystemUpdateService"

    const-string v5, "verification of system update package failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_verify_redownload_delay_sec"

    const v7, 0xa8c0

    invoke-static {v4, v5, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    .line 910
    const/4 v4, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    goto/16 :goto_2

    .line 915
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 916
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkFile()Ljava/lang/String;

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 919
    const-string v4, "SystemUpdateService"

    const-string v7, "verification already in progress"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v4, 0x0

    monitor-exit v5

    goto/16 :goto_1

    .line 929
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 923
    :cond_15
    :try_start_5
    const-string v4, "SystemUpdateService"

    const-string v7, "starting package verification"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v7, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v23, Ljava/io/File;

    iget-object v0, v13, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v7, v9, v0, v1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/content/SharedPreferences;)V

    invoke-static {v4, v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600()Ljava/util/concurrent/Executor;

    move-result-object v7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v4, v7, v9}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 928
    const/4 v4, 0x1

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1
.end method

.method private checkFile()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 954
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "filename"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 956
    const-string v5, "SystemUpdateService"

    const-string v6, "OTA package filename empty"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 966
    .end local v1    # "filename":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 959
    .restart local v1    # "filename":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 961
    const-string v5, "SystemUpdateService"

    const-string v6, "OTA package doesn\'t exist!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 962
    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 965
    .local v2, "size":J
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OTA package size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkPostInstallIntents()V
    .locals 10

    .prologue
    .line 620
    iget-object v7, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "pending_filename"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, "pending":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    const/4 v2, 0x0

    .line 624
    .local v2, "installFilename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 626
    .local v6, "success":Z
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/cache/recovery/last_install"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 627
    .local v1, "in":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 628
    const-string v7, "1"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 629
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    if-nez v2, :cond_2

    .line 635
    const-string v7, "SystemUpdateService"

    const-string v8, "can\'t determine last-installed OTA package name"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    .end local v1    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "SystemUpdateService"

    const-string v8, "failed to read last_install"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 640
    const-string v7, "SystemUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first boot since "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " install of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v4, ""

    .line 643
    .local v4, "message":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 644
    iget-object v7, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "success_message"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 649
    :goto_1
    const-string v8, "SystemUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notifying Glass that the OTA was a "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v6, :cond_4

    const-string v7, "success"

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with the following message: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v7, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.google.glass.update.UPDATE_AVAILABLE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gsf/update/SystemUpdateService;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 652
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.google.glass.update.UPDATE_COMPLETED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "is_success"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    const-string v7, "message"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    iget-object v7, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v7, v3}, Lcom/google/android/gsf/update/SystemUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 657
    iget-object v7, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "pending_filename"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 646
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v7, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v7}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "failure_message"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 649
    :cond_4
    const-string v7, "failure"

    goto :goto_2
.end method

.method private checkUpdateState(Landroid/content/Intent;)Z
    .locals 27
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 460
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-lez v21, :cond_0

    const/16 v21, 0x0

    .line 615
    :goto_0
    return v21

    .line 462
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 463
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "provisioned"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 464
    .local v13, "provisionedTime":J
    const-wide/16 v21, 0x0

    cmp-long v21, v13, v21

    if-eqz v21, :cond_1

    cmp-long v21, v13, v10

    if-lez v21, :cond_2

    .line 468
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "device_provisioned"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 470
    .local v12, "provisioned":I
    if-nez v12, :cond_4

    const-wide/16 v13, 0x0

    .line 471
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "provisioned"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 473
    .end local v12    # "provisioned":I
    :cond_2
    const-wide/16 v21, 0x0

    cmp-long v21, v13, v21

    if-lez v21, :cond_5

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    .line 475
    if-eqz p1, :cond_3

    const-string v21, "boot"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkPostInstallIntents()V

    .line 479
    :cond_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 480
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "update_url"

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 482
    .local v17, "update_url":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 483
    const-string v21, "SystemUpdateService"

    const-string v22, "cancelUpdate (empty URL)"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 486
    const/16 v21, 0x0

    goto/16 :goto_0

    .end local v17    # "update_url":Ljava/lang/String;
    .restart local v12    # "provisioned":I
    :cond_4
    move-wide v13, v10

    .line 470
    goto :goto_1

    .line 473
    .end local v12    # "provisioned":I
    :cond_5
    const/16 v21, 0x0

    goto :goto_2

    .line 489
    .restart local v17    # "update_url":Ljava/lang/String;
    :cond_6
    const-string v21, "SystemUpdateService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Intent: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz p1, :cond_7

    const-string v21, "download_now"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v21

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 495
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "update_required_setup"

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 496
    .local v15, "required_setup":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 497
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mRequiredSetup:Z

    .line 498
    const-string v21, "SystemUpdateService"

    const-string v22, "update required during setup wizard"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "status"

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "url"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "install_time"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "update_retry_delay_sec"

    const v25, 0x3f480

    invoke-static/range {v23 .. v25}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    add-long v21, v21, v23

    cmp-long v21, v10, v21

    if-gtz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "install_time"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    const-wide/32 v23, 0x36ee80

    sub-long v21, v21, v23

    cmp-long v21, v10, v21

    if-gez v21, :cond_a

    .line 514
    :cond_9
    const-string v21, "SystemUpdateService"

    const-string v22, "cancelUpdate (willing to retry now)"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 518
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "update_urgency"

    const/16 v23, 0x2

    invoke-static/range {v21 .. v23}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 520
    .local v18, "urgency":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "url"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 522
    const-string v21, "SystemUpdateService"

    const-string v22, "cancelUpdate (update URL has changed)"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 525
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v21, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "status"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "url_change"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "required_setup"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mRequiredSetup:Z

    move/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 529
    packed-switch v18, :pswitch_data_0

    .line 542
    :pswitch_0
    const-string v21, "download_approved"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "install_approved"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    const/16 v18, 0x2

    .line 547
    :goto_3
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v21

    const-wide/16 v22, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 552
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "update_provisioning_delay_sec"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 554
    .local v4, "delay":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mRequiredSetup:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    if-ltz v4, :cond_e

    const-wide/16 v21, 0x0

    cmp-long v21, v13, v21

    if-eqz v21, :cond_c

    mul-int/lit16 v0, v4, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v21, v21, v13

    cmp-long v21, v10, v21

    if-gez v21, :cond_e

    .line 557
    :cond_c
    const-wide/16 v21, 0x0

    cmp-long v21, v13, v21

    if-nez v21, :cond_d

    .line 561
    const/16 v21, 0x384

    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v19, v10, v21

    .line 570
    .local v19, "when":J
    :goto_4
    const-string v21, "SystemUpdateService"

    const-string v22, "cancelUpdate (not provisioned)"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 572
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 574
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 532
    .end local v4    # "delay":I
    .end local v19    # "when":J
    .restart local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    :pswitch_1
    const-string v21, "download_approved"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "install_approved"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 537
    :pswitch_2
    const-string v21, "download_approved"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "install_approved"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 568
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "delay":I
    :cond_d
    mul-int/lit16 v0, v4, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v19, v13, v21

    .restart local v19    # "when":J
    goto :goto_4

    .line 577
    .end local v19    # "when":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "status"

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1000(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v6

    .line 580
    .local v6, "nextTime":J
    cmp-long v21, v10, v6

    if-gez v21, :cond_f

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 582
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 586
    .end local v6    # "nextTime":J
    :cond_f
    const/16 v16, 0x0

    .line 588
    .local v16, "sticky":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "status"

    const/16 v23, -0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "download_approved"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 590
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkDownload(Ljava/lang/String;I)Z

    move-result v16

    .line 613
    :cond_10
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 615
    if-nez v16, :cond_11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v21

    if-eqz v21, :cond_15

    :cond_11
    const/16 v21, 0x1

    :goto_6
    monitor-exit v22

    goto/16 :goto_0

    .line 616
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 592
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "update_download_notify_time"

    const-wide/16 v23, 0x0

    invoke-static/range {v21 .. v24}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v8, v21, v23

    .line 594
    .local v8, "notifyTime":J
    sub-long v21, v8, v10

    const-wide v23, 0x9a7ec800L

    cmp-long v21, v21, v23

    if-lez v21, :cond_13

    .line 595
    const-string v21, "SystemUpdateService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "download_notify_time too far in future; ignoring ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-wide/16 v8, 0x0

    .line 599
    :cond_13
    cmp-long v21, v10, v8

    if-ltz v21, :cond_14

    .line 600
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 601
    const v21, 0x7f09003a

    const v22, 0x7f09003c

    const v23, 0x7f02004f

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 605
    const-wide/32 v21, 0x36ee80

    add-long v21, v21, v10

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto/16 :goto_5

    .line 607
    :cond_14
    const-string v21, "SystemUpdateService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deferring notification for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-long v23, v8, v10

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v8, v9, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto/16 :goto_5

    .line 615
    .end local v8    # "notifyTime":J
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private downloadFailed(II)V
    .locals 7
    .param p1, "urgency"    # I
    .param p2, "minRetryDelaySec"    # I

    .prologue
    const/4 v6, 0x6

    .line 661
    invoke-direct {p0, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 662
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 663
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 664
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 665
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 666
    const-string v3, "status"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 668
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 669
    const-string v3, "download_approved"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 670
    const v3, 0x7f09003e

    const v4, 0x7f09003f

    const v5, 0x7f020050

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 681
    :goto_0
    const-string v3, "watchdog_deadline"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 682
    return-void

    .line 675
    :cond_1
    if-lez p2, :cond_2

    .line 676
    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 677
    .local v1, "when":J
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V

    .line 679
    .end local v1    # "when":J
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1000(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto :goto_0
.end method

.method private getAllowRoaming(I)Z
    .locals 6
    .param p1, "urgency"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 711
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_allow_roaming"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 712
    .local v0, "v":I
    if-gez v0, :cond_2

    .line 715
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 715
    goto :goto_0

    .line 717
    :cond_2
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private getAllowUnplugged(I)Z
    .locals 3
    .param p1, "urgency"    # I

    .prologue
    .line 692
    packed-switch p1, :pswitch_data_0

    .line 705
    :pswitch_0
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTA requires device to be plugged in. [urgency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 698
    :pswitch_1
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTA does not require device to be plugged in. [urgency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v0, 0x1

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMaintenanceWindow()Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;
    .locals 13

    .prologue
    const/16 v12, 0x3b

    const/16 v11, 0x17

    const/4 v8, 0x0

    .line 1124
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v9}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "maintenance_window"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1125
    .local v7, "window":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1128
    :cond_0
    new-instance v6, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;

    invoke-direct {v6, p0, v8}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;-><init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;Lcom/google/android/gsf/update/SystemUpdateService$1;)V

    .line 1159
    :goto_0
    return-object v6

    .line 1131
    :cond_1
    const-string v9, "none"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1132
    const-string v9, "SystemUpdateService"

    const-string v10, "maintenance window set to \"none\""

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 1133
    goto :goto_0

    .line 1136
    :cond_2
    sget-object v9, Lcom/google/android/gsf/update/SystemUpdateService;->MAINTENANCE_WINDOW_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1137
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1138
    const-string v9, "SystemUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "malformed maintenance window \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 1139
    goto :goto_0

    .line 1143
    :cond_3
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1144
    .local v4, "sHour":I
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1145
    .local v5, "sMin":I
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1146
    .local v1, "eHour":I
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1152
    .local v2, "eMin":I
    if-gt v4, v11, :cond_4

    if-gt v5, v12, :cond_4

    if-gt v1, v11, :cond_4

    if-le v2, v12, :cond_5

    .line 1153
    :cond_4
    const-string v9, "SystemUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "malformed maintenance window \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 1154
    goto/16 :goto_0

    .line 1147
    .end local v1    # "eHour":I
    .end local v2    # "eMin":I
    .end local v4    # "sHour":I
    .end local v5    # "sMin":I
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1156
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "eHour":I
    .restart local v2    # "eMin":I
    .restart local v4    # "sHour":I
    .restart local v5    # "sMin":I
    :cond_5
    new-instance v6, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;

    invoke-direct {v6, p0, v8}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;-><init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;Lcom/google/android/gsf/update/SystemUpdateService$1;)V

    .line 1157
    .local v6, "w":Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;
    mul-int/lit8 v8, v4, 0x3c

    add-int/2addr v8, v5

    iput v8, v6, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->start:I

    .line 1158
    mul-int/lit8 v8, v1, 0x3c

    add-int/2addr v8, v2

    iput v8, v6, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->end:I

    goto/16 :goto_0
.end method

.method private install()V
    .locals 8

    .prologue
    .line 970
    const-string v4, "SystemUpdateService"

    const-string v5, "called install()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkFile()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "filename":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 976
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "status"

    const/4 v5, 0x5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pending_filename"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 986
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_install_success_message"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 987
    .local v3, "message":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 988
    const-string v4, "success_message"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 990
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_install_failure_message"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 991
    if-eqz v3, :cond_2

    .line 992
    const-string v4, "failure_message"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 995
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 996
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 998
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    .line 1000
    .local v0, "context":Landroid/content/Context;
    const-string v4, "SystemUpdateService"

    const-string v5, "calling installPackage()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    new-instance v4, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->start()V

    goto :goto_0
.end method

.method private isAutomaticallyDownloaded(I)Z
    .locals 1
    .param p1, "urgency"    # I

    .prologue
    .line 943
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInMaintenanceWindow(J)Z
    .locals 7
    .param p1, "when"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1169
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->getMaintenanceWindow()Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;

    move-result-object v2

    .line 1170
    .local v2, "window":Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;
    if-nez v2, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return v3

    .line 1171
    :cond_1
    iget v5, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->start:I

    iget v6, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->end:I

    if-ne v5, v6, :cond_2

    move v3, v4

    .line 1176
    goto :goto_0

    .line 1179
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1180
    .local v1, "query":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1181
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int v0, v5, v6

    .line 1183
    .local v0, "now":I
    iget v5, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->start:I

    if-gt v5, v0, :cond_3

    iget v5, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->end:I

    if-le v0, v5, :cond_4

    :cond_3
    iget v5, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->start:I

    iget v6, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->end:I

    if-le v5, v6, :cond_0

    iget v5, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->start:I

    if-le v5, v0, :cond_4

    iget v5, v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$Window;->end:I

    if-gt v0, v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private isMobileDownloadAllowedNow()Z
    .locals 4

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOkToInstallNow(IJ)Z
    .locals 3
    .param p1, "urgency"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v0, 0x0

    .line 933
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 934
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1600()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isInMaintenanceWindow(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 936
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "install_approved"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private notifyWithActivity(III)V
    .locals 12
    .param p1, "titleResId"    # I
    .param p2, "messageResId"    # I
    .param p3, "iconResId"    # I

    .prologue
    .line 1053
    sget-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-eqz v0, :cond_0

    .line 1055
    const-string v0, "SystemUpdateService"

    const-string v1, "skipping notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1060
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1061
    .local v11, "title":Ljava/lang/CharSequence;
    invoke-virtual {v10, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1063
    .local v6, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1068
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 1083
    .local v7, "n":Landroid/app/Notification;
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 1085
    .local v8, "nm":Landroid/app/NotificationManager;
    const/4 v0, 0x0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, p3, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private retryAt(JZ)V
    .locals 5
    .param p1, "when"    # J
    .param p3, "wakeup"    # Z

    .prologue
    .line 685
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 686
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 687
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 688
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry (wakeup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void

    .line 687
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 949
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 951
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 427
    array-length v0, p1

    if-lez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkUpdateState(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkUpdateState(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method logState()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1090
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "status"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1092
    .local v0, "status":I
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "download_approved"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    or-int/lit8 v0, v0, 0x20

    .line 1096
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "install_approved"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1097
    or-int/lit8 v0, v0, 0x40

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "verified"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1102
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "verified"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 1105
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    if-eqz v1, :cond_3

    .line 1106
    or-int/lit16 v0, v0, 0x200

    .line 1110
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "download_mobile"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1111
    or-int/lit16 v0, v0, 0x400

    .line 1113
    :cond_4
    const v1, 0x31129

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "url"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1116
    return-void

    :cond_5
    move v1, v3

    .line 1102
    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "keepRunning"    # Ljava/lang/Boolean;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$300(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$402(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z

    .line 438
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$502(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z

    .line 442
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$402(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z

    .line 443
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;)V

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$700(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 456
    :cond_0
    :goto_0
    monitor-exit v1

    .line 457
    return-void

    .line 445
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->stopSelf()V

    .line 452
    :cond_3
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.class Lcom/google/glass/settings/BackupRestoreScheduler;
.super Ljava/lang/Object;
.source "BackupRestoreScheduler.java"


# static fields
.field static final LAST_RESTORE_TIME_PREF:Ljava/lang/String; = "last_restore_time"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final NOT_SET:I = -0x1

.field static final RESTORE_INTERVAL:J = 0x5265c00L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/BackupRestoreScheduler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static markRestored(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v0, "last_restore_time"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_restore_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    return-void
.end method

.method static scheduleForNextRestore(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v9, -0x1

    const/4 v12, 0x0

    .line 33
    const-wide/16 v2, -0x1

    .line 34
    .local v2, "lastRestoreTime":J
    const-string v8, "last_restore_time"

    invoke-virtual {p0, v8, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 36
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v7, :cond_0

    .line 37
    const-string v8, "last_restore_time"

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 40
    :cond_0
    cmp-long v8, v2, v9

    if-nez v8, :cond_1

    .line 41
    sget-object v8, Lcom/google/glass/settings/BackupRestoreScheduler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No last restore time is set, skip"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 45
    .local v1, "googleAccount":Landroid/accounts/Account;
    if-nez v1, :cond_2

    .line 46
    sget-object v8, Lcom/google/glass/settings/BackupRestoreScheduler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No google account found, skip"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_2
    const-wide/32 v8, 0x5265c00

    add-long v4, v2, v8

    .line 52
    .local v4, "nextRestoreTime":J
    invoke-static {v1}, Lcom/google/glass/util/BackupRestoreUtil;->getRestoreIntent(Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x40000000    # 2.0f

    .line 51
    invoke-static {p0, v12, v8, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 54
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 55
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v12, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 57
    sget-object v8, Lcom/google/glass/settings/BackupRestoreScheduler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Next restore is scheduled at %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    aput-object v11, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

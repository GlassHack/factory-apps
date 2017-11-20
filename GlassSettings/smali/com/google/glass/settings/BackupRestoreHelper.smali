.class public Lcom/google/glass/settings/BackupRestoreHelper;
.super Ljava/lang/Object;
.source "BackupRestoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;
    }
.end annotation


# static fields
.field public static final BACKUP_ENABLE_ACTION:Ljava/lang/String; = "com.google.android.backup.BackupEnabler"

.field public static final BACKUP_PACKAGE:Ljava/lang/String; = "com.google.android.backuptransport"

.field private static final EXTRA_BACKUP_ACCOUNT:Ljava/lang/String; = "backupAccount"

.field public static final EXTRA_BACKUP_ENABLE:Ljava/lang/String; = "BACKUP_ENABLE"

.field private static final EXTRA_BACKUP_USER_HANDLE:Ljava/lang/String; = "backupUserHandle"

.field private static final RESTORE_INTENT:Landroid/content/Intent;

.field public static final SET_BACKUP_ACCOUNT_ACTION:Ljava/lang/String; = "com.google.android.backup.SetBackupAccount"

.field public static final START_RESTORE_ACTION:Ljava/lang/String; = "android.intent.action.START_RESTORE"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final backupServiceConnection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private final intentSender:Lcom/google/glass/util/IntentSender;

.field private settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/BackupRestoreHelper;->RESTORE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/glass/settings/BackupRestoreHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/BackupRestoreHelper$1;-><init>(Lcom/google/glass/settings/BackupRestoreHelper;)V

    iput-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->backupServiceConnection:Landroid/content/ServiceConnection;

    .line 81
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreHelper;->context:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->intentSender:Lcom/google/glass/util/IntentSender;

    .line 83
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/BackupRestoreHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->startTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/glass/settings/BackupRestoreHelper;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;
    .param p1, "x1"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/google/glass/settings/BackupRestoreHelper;->startTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/glass/settings/BackupRestoreHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/settings/BackupRestoreHelper;->success()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/settings/BackupRestoreHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/BackupRestoreHelper;)Lcom/google/glass/util/IntentSender;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->intentSender:Lcom/google/glass/util/IntentSender;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/BackupRestoreHelper;)Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/settings/BackupRestoreHelper;Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;)Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;
    .param p1, "x1"    # Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/settings/BackupRestoreHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/settings/BackupRestoreHelper;->enableBackup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/BackupRestoreHelper;Landroid/accounts/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;
    .param p1, "x1"    # Landroid/accounts/Account;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/glass/settings/BackupRestoreHelper;->setBackupAccount(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/settings/BackupRestoreHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/settings/BackupRestoreHelper;->startRestore()V

    return-void
.end method

.method private enableBackup()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.backup.BackupEnabler"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "BACKUP_ENABLE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/settings/BackupRestoreHelper;->intentSender:Lcom/google/glass/util/IntentSender;

    iget-object v5, p0, Lcom/google/glass/settings/BackupRestoreHelper;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :goto_0
    return v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v2, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Could not enable backup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 120
    goto :goto_0

    .line 121
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Could not enable backup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 123
    goto :goto_0
.end method

.method private fail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    sget-object v0, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Fail to start restoring service"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    invoke-interface {v0, v3}, Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;->onSettingsRestored(Z)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    .line 162
    :cond_0
    return-void
.end method

.method private setBackupAccount(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    sget-object v4, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Setting backup account: %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.backup.SetBackupAccount"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "backupAccount"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string v4, "backupUserHandle"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const-string v4, "com.google.android.backuptransport"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/settings/BackupRestoreHelper;->intentSender:Lcom/google/glass/util/IntentSender;

    iget-object v5, p0, Lcom/google/glass/settings/BackupRestoreHelper;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return v2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Could not set backup account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 138
    goto :goto_0
.end method

.method private startRestore()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/settings/BackupRestoreHelper;->intentSender:Lcom/google/glass/util/IntentSender;

    iget-object v3, p0, Lcom/google/glass/settings/BackupRestoreHelper;->context:Landroid/content/Context;

    sget-object v4, Lcom/google/glass/settings/BackupRestoreHelper;->RESTORE_INTENT:Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/glass/settings/BackupRestoreHelper;->backupServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/google/glass/settings/BackupRestoreHelper;->intentSender:Lcom/google/glass/util/IntentSender;

    iget-object v3, p0, Lcom/google/glass/settings/BackupRestoreHelper;->context:Landroid/content/Context;

    sget-object v4, Lcom/google/glass/settings/BackupRestoreHelper;->RESTORE_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 146
    .local v1, "result":Landroid/content/ComponentName;
    sget-object v2, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Started restoring service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .end local v1    # "result":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/BackupRestoreHelper;->fail()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Could not restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0}, Lcom/google/glass/settings/BackupRestoreHelper;->fail()V

    goto :goto_0
.end method

.method private success()V
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/google/glass/settings/BackupRestoreHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Success to restore user settings."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;->onSettingsRestored(Z)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper;->settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public restoreSettingsAsync(Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;Landroid/accounts/Account;)V
    .locals 2
    .param p1, "settingsRestoreListener"    # Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 95
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 96
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/BackupRestoreHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/settings/BackupRestoreHelper$2;-><init>(Lcom/google/glass/settings/BackupRestoreHelper;Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;Landroid/accounts/Account;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

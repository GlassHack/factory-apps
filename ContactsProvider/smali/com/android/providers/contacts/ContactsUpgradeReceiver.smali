.class public Lcom/android/providers/contacts/ContactsUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 55
    .local v7, "startTime":J
    const-string v10, "ContactsUpgradeReceiver"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 56
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "db_version"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 57
    .local v3, "prefDbVersion":I
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "curIcuVersion":Ljava/lang/String;
    const-string v10, "icu_version"

    const-string v11, ""

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "prefIcuVersion":Ljava/lang/String;
    const/16 v10, 0x323

    if-ne v3, v10, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 67
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 68
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "db_version"

    const/16 v11, 0x323

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string v10, "icu_version"

    invoke-interface {v1, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    .line 76
    .local v2, "helper":Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {p1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v6

    .line 77
    .local v6, "profileHelper":Lcom/android/providers/contacts/ProfileDatabaseHelper;
    const-string v10, "ContactsUpgradeReceiver"

    const-string v11, "Creating or opening contacts database"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    const v11, 0x7f040003

    invoke-virtual {p1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    invoke-virtual {v6}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    invoke-static {p1, v2, v6}, Lcom/android/providers/contacts/ContactsProvider2;->updateLocaleOffline(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ProfileDatabaseHelper;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-static {v10, v11}, Lcom/android/providers/contacts/EventLogTags;->writeContactsUpgradeReceiver(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .end local v0    # "curIcuVersion":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "helper":Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .end local v3    # "prefDbVersion":I
    .end local v4    # "prefIcuVersion":Ljava/lang/String;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "profileHelper":Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .end local v7    # "startTime":J
    :cond_1
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v9

    .line 94
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "ContactsUpgradeReceiver"

    const-string v11, "Error during upgrade attempt. Disabling receiver."

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v11, p1, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 81
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v0    # "curIcuVersion":Ljava/lang/String;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "helper":Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .restart local v3    # "prefDbVersion":I
    .restart local v4    # "prefIcuVersion":Ljava/lang/String;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "profileHelper":Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .restart local v7    # "startTime":J
    :catch_1
    move-exception v10

    goto :goto_0
.end method

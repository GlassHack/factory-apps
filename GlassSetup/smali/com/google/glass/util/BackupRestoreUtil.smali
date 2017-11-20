.class public Lcom/google/glass/util/BackupRestoreUtil;
.super Ljava/lang/Object;
.source "BackupRestoreUtil.java"


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.google.glass.settings.BackupRestoreService"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.google.glass.settings.ui"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestoreIntent(Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.google.glass.settings.ui"

    const-string v2, "com.google.glass.settings.BackupRestoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    return-object v0
.end method

.method public static startRestoreFromAccount(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/util/BackupRestoreUtil;->getRestoreIntent(Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    return-void
.end method

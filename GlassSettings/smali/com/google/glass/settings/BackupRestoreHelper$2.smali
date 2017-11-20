.class Lcom/google/glass/settings/BackupRestoreHelper$2;
.super Ljava/lang/Object;
.source "BackupRestoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/BackupRestoreHelper;->restoreSettingsAsync(Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/BackupRestoreHelper;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/BackupRestoreHelper;Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    iput-object p2, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->val$settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    iput-object p3, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreHelper;->access$500(Lcom/google/glass/settings/BackupRestoreHelper;)Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->val$settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;->onSettingsRestored(Z)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->val$settingsRestoreListener:Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    invoke-static {v0, v1}, Lcom/google/glass/settings/BackupRestoreHelper;->access$502(Lcom/google/glass/settings/BackupRestoreHelper;Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;)Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;

    .line 104
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/glass/settings/BackupRestoreHelper;->access$102(Lcom/google/glass/settings/BackupRestoreHelper;J)J

    .line 105
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreHelper;->access$600(Lcom/google/glass/settings/BackupRestoreHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->val$account:Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/glass/settings/BackupRestoreHelper;->access$700(Lcom/google/glass/settings/BackupRestoreHelper;Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$2;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreHelper;->access$800(Lcom/google/glass/settings/BackupRestoreHelper;)V

    goto :goto_0
.end method

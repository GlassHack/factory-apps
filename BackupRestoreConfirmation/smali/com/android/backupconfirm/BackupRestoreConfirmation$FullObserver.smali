.class Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupRestoreConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/backupconfirm/BackupRestoreConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/backupconfirm/BackupRestoreConfirmation;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->this$0:Lcom/android/backupconfirm/BackupRestoreConfirmation;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    .line 290
    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method public onEndBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    return-void
.end method

.method public onEndRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    return-void
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    return-void
.end method

.method public onStartBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    return-void
.end method

.method public onStartRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void
.end method

.method public onTimeout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/backupconfirm/BackupRestoreConfirmation$FullObserver;->mHandler:Landroid/os/Handler;

    .line 294
    return-void
.end method

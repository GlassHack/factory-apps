.class Lcom/android/sharedstoragebackup/ObbBackupService$1;
.super Lcom/android/internal/backup/IObbBackupService$Stub;
.source "ObbBackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sharedstoragebackup/ObbBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sharedstoragebackup/ObbBackupService;


# direct methods
.method constructor <init>(Lcom/android/sharedstoragebackup/ObbBackupService;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/sharedstoragebackup/ObbBackupService$1;->this$0:Lcom/android/sharedstoragebackup/ObbBackupService;

    invoke-direct {p0}, Lcom/android/internal/backup/IObbBackupService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method allFileContents(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "rootDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v5, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v3, "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 134
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 135
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 136
    .local v1, "contents":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 137
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    .line 138
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "contents":[Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    return-object v5
.end method

.method public backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "token"    # I
    .param p4, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    .line 60
    .local v14, "outFd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v12, v2, v3

    .line 61
    .local v12, "obbDir":Ljava/io/File;
    if-eqz v12, :cond_0

    .line 62
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0, v12}, Lcom/android/sharedstoragebackup/ObbBackupService$1;->allFileContents(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v13

    .line 64
    .local v13, "obbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz v13, :cond_0

    .line 67
    const-string v2, "ObbBackupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files to back up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "rootPath":Ljava/lang/String;
    new-instance v7, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v7, v14}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 71
    .local v7, "out":Landroid/app/backup/BackupDataOutput;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 72
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "filePath":Ljava/lang/String;
    const-string v2, "ObbBackupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v3, "obb"

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v5    # "rootPath":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "obbDir":Ljava/io/File;
    .end local v13    # "obbList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :catch_0
    move-exception v9

    .line 83
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ObbBackupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception backing up OBBs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 88
    .local v7, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x4

    new-array v8, v2, [B

    .line 89
    .local v8, "buf":[B
    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 95
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "buf":[B
    :goto_1
    :try_start_3
    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    .line 99
    .end local v9    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 87
    .restart local v12    # "obbDir":Ljava/io/File;
    :cond_0
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 88
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x4

    new-array v8, v2, [B

    .line 89
    .restart local v8    # "buf":[B
    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 95
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "buf":[B
    :goto_3
    :try_start_5
    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 96
    :catch_1
    move-exception v2

    goto :goto_2

    .line 90
    :catch_2
    move-exception v9

    .line 91
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v2, "ObbBackupService"

    const-string v3, "Unable to finalize obb backup stream!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 90
    .end local v12    # "obbDir":Ljava/io/File;
    :catch_3
    move-exception v9

    .line 91
    const-string v2, "ObbBackupService"

    const-string v3, "Unable to finalize obb backup stream!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 87
    :try_start_6
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 88
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x4

    new-array v8, v3, [B

    .line 89
    .restart local v8    # "buf":[B
    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 95
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "buf":[B
    :goto_4
    :try_start_7
    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 97
    :goto_5
    throw v2

    .line 90
    :catch_4
    move-exception v9

    .line 91
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ObbBackupService"

    const-string v4, "Unable to finalize obb backup stream!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 96
    :catch_5
    move-exception v2

    goto :goto_2

    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    goto :goto_5
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 109
    :try_start_0
    invoke-static {p1}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v10, v2, v3

    .line 110
    .local v10, "outFile":Ljava/io/File;
    if-eqz v10, :cond_0

    .line 111
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v12, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v10    # "outFile":Ljava/io/File;
    .local v12, "outFile":Ljava/io/File;
    move-object v10, v12

    .line 117
    .end local v12    # "outFile":Ljava/io/File;
    .restart local v10    # "outFile":Ljava/io/File;
    :cond_0
    const-wide/16 v6, -0x1

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v8, p9

    invoke-static/range {v2 .. v10}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 126
    .end local v10    # "outFile":Ljava/io/File;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v11

    .line 119
    .local v11, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "ObbBackupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception restoring OBB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 123
    :catch_1
    move-exception v2

    goto :goto_0

    .line 121
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 122
    :try_start_4
    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 124
    :goto_1
    throw v2

    .line 123
    .restart local v10    # "outFile":Ljava/io/File;
    :catch_2
    move-exception v2

    goto :goto_0

    .end local v10    # "outFile":Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.class Lcom/android/defcontainer/DefaultContainerService$1;
.super Lcom/android/internal/app/IMediaContainerService$Stub;
.source "DefaultContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/defcontainer/DefaultContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/defcontainer/DefaultContainerService;


# direct methods
.method constructor <init>(Lcom/android/defcontainer/DefaultContainerService;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-direct {p0}, Lcom/android/internal/app/IMediaContainerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateDirectorySize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 235
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 236
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "targetPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/defcontainer/MeasurementUtils;->measureDirectory(Ljava/lang/String;)J

    move-result-wide v2

    .line 240
    .end local v1    # "targetPath":Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public calculateInstalledSize(Ljava/lang/String;Z)J
    .locals 6
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "isForwardLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "packageFile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-static {v2, v1, p2}, Lcom/android/defcontainer/DefaultContainerService;->access$500(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    .line 279
    :goto_0
    return-wide v2

    .line 274
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public checkExternalFreeStorage(Landroid/net/Uri;Z)Z
    .locals 3
    .param p1, "packageUri"    # Landroid/net/Uri;
    .param p2, "isForwardLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "apkFile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-static {v2, v0, p2}, Lcom/android/defcontainer/DefaultContainerService;->access$400(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 218
    :goto_0
    return v2

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z
    .locals 3
    .param p1, "packageUri"    # Landroid/net/Uri;
    .param p2, "isForwardLocked"    # Z
    .param p3, "threshold"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "apkFile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-static {v2, v0, p2, p3, p4}, Lcom/android/defcontainer/DefaultContainerService;->access$300(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;ZJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 207
    :goto_0
    return v2

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clearDirectory(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 262
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-virtual {v1, v0}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 266
    :cond_0
    return-void
.end method

.method public copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;
    .param p3, "outStream"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, -0x3

    .line 127
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 135
    .local v0, "autoOut":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-static {v3, p1, v0, p2}, Lcom/android/defcontainer/DefaultContainerService;->access$100(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/io/OutputStream;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v2, 0x1

    .line 150
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v3, "DefContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FNF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "DefContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not copy URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    const/4 v2, -0x4

    .line 150
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 146
    .local v1, "e":Ljava/security/DigestException;
    :try_start_3
    const-string v2, "DefContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not copy URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Security: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/DigestException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    const/4 v2, -0x2

    .line 150
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/security/DigestException;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "resFileName"    # Ljava/lang/String;
    .param p5, "publicResFileName"    # Ljava/lang/String;
    .param p6, "isExternal"    # Z
    .param p7, "isForwardLocked"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/defcontainer/DefaultContainerService;->access$000(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileSystemStats(Ljava/lang/String;)[J
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 246
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 249
    :try_start_0
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6, p1}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Llibcore/io/StructStatVfs;

    move-result-object v3

    .line 250
    .local v3, "stat":Llibcore/io/StructStatVfs;
    iget-wide v6, v3, Llibcore/io/StructStatVfs;->f_blocks:J

    iget-wide v8, v3, Llibcore/io/StructStatVfs;->f_bsize:J

    mul-long v4, v6, v8

    .line 251
    .local v4, "totalSize":J
    iget-wide v6, v3, Llibcore/io/StructStatVfs;->f_bavail:J

    iget-wide v8, v3, Llibcore/io/StructStatVfs;->f_bsize:J

    mul-long v0, v6, v8

    .line 252
    .local v0, "availSize":J
    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    const/4 v7, 0x1

    aput-wide v0, v6, v7
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 253
    .end local v0    # "availSize":J
    .end local v3    # "stat":Llibcore/io/StructStatVfs;
    .end local v4    # "totalSize":J
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Llibcore/io/ErrnoException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;
    .locals 10
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "threshold"    # J

    .prologue
    const/4 v3, -0x2

    .line 164
    new-instance v9, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v9}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 166
    .local v9, "ret":Landroid/content/pm/PackageInfoLite;
    if-nez p1, :cond_0

    .line 167
    const-string v0, "DefContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput v3, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 197
    :goto_0
    return-object v9

    .line 172
    :cond_0
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 173
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 175
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 176
    .local v8, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    if-nez v8, :cond_2

    .line 177
    const-string v0, "DefContainer"

    const-string v1, "Failed to parse package"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v6, "apkFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const/4 v0, -0x6

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 183
    :cond_1
    iput v3, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 189
    .end local v6    # "apkFile":Ljava/io/File;
    :cond_2
    iget-object v0, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 190
    iget v0, v8, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 191
    iget v0, v8, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 192
    iget-object v0, v8, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object v0, v9, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 194
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    iget v1, v8, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/defcontainer/DefaultContainerService;->access$200(Lcom/android/defcontainer/DefaultContainerService;ILjava/lang/String;IJ)I

    move-result v0

    iput v0, v9, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0
.end method

.method public getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 224
    :try_start_0
    invoke-static {p1}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DefContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get OBB info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x0

    goto :goto_0
.end method

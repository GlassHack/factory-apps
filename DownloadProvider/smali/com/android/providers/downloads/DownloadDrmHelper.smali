.class public Lcom/android/providers/downloads/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# direct methods
.method public static getOriginalMimeType(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "currentMime"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "client":Landroid/drm/DrmManagerClient;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "rawFile":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 75
    .end local p2    # "currentMime":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    :goto_0
    return-object p2

    .restart local p2    # "currentMime":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    goto :goto_0

    .end local v1    # "rawFile":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    throw v2
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 50
    if-eqz p0, :cond_1

    .line 52
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 56
    :cond_0
    const-string v1, ".fl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    .end local v0    # "extensionIndex":I
    :cond_1
    return-object p0
.end method

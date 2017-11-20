.class public interface abstract Lcom/google/android/apps/lightcycle/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# virtual methods
.method public abstract addExistingPanoramaSessions(Lcom/google/android/apps/lightcycle/util/Callback;Landroid/app/ProgressDialog;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
.end method

.method public abstract deleteSession(Ljava/lang/String;)V
.end method

.method public abstract getExistingLocalSessionStorage(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
.end method

.method public abstract getLocalSessionStorage()Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
.end method

.method public abstract getSessionBaseDirectory()Ljava/io/File;
.end method

.method public abstract getSessionIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionMetadata(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/SessionMetadata;
.end method

.method public abstract getTempDirectory()Ljava/io/File;
.end method

.method public abstract getZippableSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/ZippableSession;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract retrieveRawSessionData(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract retrieveStitchedPanorama(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract retrieveThumbnail(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract setPanoramaDestination(Ljava/lang/String;)Z
.end method

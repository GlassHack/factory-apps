.class public Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;
.super Ljava/lang/Object;
.source "GalleryPanoSource.java"


# instance fields
.field private stitchedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

.field private unstitchedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/storage/StorageManager;)V
    .locals 1
    .param p1, "storageManager"    # Lcom/google/android/apps/lightcycle/storage/StorageManager;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->stitchedSessions:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->unstitchedSessions:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->refresh()V

    .line 24
    return-void
.end method


# virtual methods
.method public getSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/SessionMetadata;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getSessionMetadata(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/SessionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getStitchedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->retrieveStitchedPanorama(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStitchedSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->stitchedSessions:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->retrieveThumbnail(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnstitchedSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->unstitchedSessions:Ljava/util/List;

    return-object v0
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 31
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->stitchedSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 32
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->unstitchedSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 33
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v4}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getSessionIdList()Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v4, v2}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getSessionMetadata(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/SessionMetadata;

    move-result-object v0

    .line 36
    .local v0, "entry":Lcom/google/android/apps/lightcycle/storage/SessionMetadata;
    iget-boolean v4, v0, Lcom/google/android/apps/lightcycle/storage/SessionMetadata;->stitchedPanoramaExists:Z

    if-eqz v4, :cond_0

    .line 37
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->stitchedSessions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->unstitchedSessions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v0    # "entry":Lcom/google/android/apps/lightcycle/storage/SessionMetadata;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

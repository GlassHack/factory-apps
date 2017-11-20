.class public Lcom/android/providers/media/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# static fields
.field private static final PTP_DIRECTORIES:[Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/providers/media/IMtpService$Stub;

.field private mDatabase:Landroid/mtp/MtpDatabase;

.field private mMtpDisabled:Z

.field private mPtpMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Lcom/android/providers/media/MtpService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$1;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/android/providers/media/MtpService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$2;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    .line 207
    new-instance v0, Lcom/android/providers/media/MtpService$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$3;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/media/MtpService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method private addStorageDevicesLocked()V
    .locals 6

    .prologue
    .line 52
    iget-boolean v5, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v5, :cond_1

    .line 54
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 55
    .local v2, "primary":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 57
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "state":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-direct {p0, v5}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    .line 67
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "primary":Landroid/os/storage/StorageVolume;
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 64
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v4}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    goto :goto_0
.end method

.method private addStorageLocked(Landroid/os/storage/StorageVolume;)V
    .locals 5
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 248
    new-instance v1, Landroid/mtp/MtpStorage;

    invoke-virtual {p0}, Lcom/android/providers/media/MtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    .line 249
    .local v1, "storage":Landroid/mtp/MtpStorage;
    invoke-virtual {v1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStorageLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v2, v1}, Landroid/mtp/MtpDatabase;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v2, v1}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 259
    :cond_1
    return-void
.end method

.method private manageServiceLocked()V
    .locals 4

    .prologue
    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 186
    .local v0, "isCurrentUser":Z
    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 187
    const-string v2, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting MTP server in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v1, :cond_3

    const-string v1, "PTP mode"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Landroid/mtp/MtpServer;

    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-boolean v3, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Z)V

    iput-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    .line 189
    iget-boolean v1, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1}, Landroid/mtp/MtpServer;->start()V

    .line 199
    :cond_1
    :goto_2
    return-void

    .line 185
    .end local v0    # "isCurrentUser":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    .restart local v0    # "isCurrentUser":Z
    :cond_3
    const-string v1, "MTP mode"

    goto :goto_1

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 194
    const-string v1, "MtpService"

    const-string v2, "no longer current user; shutting down MTP server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    goto :goto_2
.end method

.method private removeStorageLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 263
    .local v0, "storage":Landroid/mtp/MtpStorage;
    if-nez v0, :cond_1

    .line 264
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no MtpStorage for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStorageLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpDatabase;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    goto :goto_0
.end method

.method private updateDisabledStateLocked()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 171
    .local v0, "isCurrentUser":Z
    :goto_0
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 173
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    .line 176
    const-string v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating state; isCurrentUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMtpLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .end local v0    # "isCurrentUser":Z
    .end local v1    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_2
    move v0, v3

    .line 170
    goto :goto_0

    .restart local v0    # "isCurrentUser":Z
    .restart local v1    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_3
    move v2, v3

    .line 173
    goto :goto_1
.end method

.method private volumeMountedLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v2, v0

    .line 234
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v2, :cond_1

    .line 238
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-nez v2, :cond_1

    .line 239
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    .line 245
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    return-void

    .line 232
    .restart local v1    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 124
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/providers/media/MtpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 127
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v5

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->updateDisabledStateLocked()V

    .line 129
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 130
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 131
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    iput-object v3, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 133
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 140
    return-void

    .line 139
    .end local v0    # "i":I
    .end local v3    # "volumes":[Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MtpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 205
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v6

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->updateDisabledStateLocked()V

    .line 146
    if-nez p1, :cond_0

    :goto_0
    iput-boolean v5, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, "subdirs":[Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v5, :cond_1

    .line 150
    sget-object v5, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    array-length v0, v5

    .line 151
    .local v0, "count":I
    new-array v4, v0, [Ljava/lang/String;

    .line 152
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 153
    sget-object v5, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 156
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "count":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v4    # "subdirs":[Ljava/lang/String;
    :cond_0
    const-string v5, "ptp"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_0

    .line 160
    .restart local v4    # "subdirs":[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 161
    .local v3, "primary":Landroid/os/storage/StorageVolume;
    new-instance v5, Landroid/mtp/MtpDatabase;

    const-string v7, "external"

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p0, v7, v8, v4}, Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 163
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->manageServiceLocked()V

    .line 164
    monitor-exit v6

    .line 166
    const/4 v5, 0x1

    return v5

    .line 164
    .end local v3    # "primary":Landroid/os/storage/StorageVolume;
    .end local v4    # "subdirs":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

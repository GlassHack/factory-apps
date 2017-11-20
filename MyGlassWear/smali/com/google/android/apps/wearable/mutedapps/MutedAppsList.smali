.class public Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;
.super Ljava/lang/Object;
.source "MutedAppsList.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;,
        Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;
    }
.end annotation


# static fields
.field private static final PREFERENCES_KEY:Ljava/lang/String; = "key_muted_apps"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "muted_apps"

.field private static final TAG:Ljava/lang/String; = "MutedApps"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mSyncInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataManager"    # Lcom/google/android/wearable/gmsclient/DataManager;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mListeners:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    .line 82
    iput-object p1, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mContext:Landroid/content/Context;

    const-string v1, "muted_apps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mPrefs:Landroid/content/SharedPreferences;

    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->initializeCacheAsync()V

    .line 86
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;Lcom/google/android/gms/wearable/DataItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;
    .param p1, "x1"    # Lcom/google/android/gms/wearable/DataItem;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->getPackageName(Lcom/google/android/gms/wearable/DataItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->pingListeners()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;
    .param p1, "x1"    # Lcom/google/android/wearable/gmsclient/WearableFuture;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->opAcked(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    return-void
.end method

.method private applyToCache(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;)V
    .locals 5
    .param p1, "op"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;

    .prologue
    .line 332
    sget-object v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "key_muted_apps"

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 335
    .local v0, "mutableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v1, p1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 336
    iget-object v1, p1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "key_muted_apps"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    monitor-exit v2

    .line 342
    return-void

    .line 337
    :cond_1
    iget v1, p1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 338
    iget-object v1, p1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v0    # "mutableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;
    .locals 3

    .prologue
    .line 73
    sget-object v1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->sInstance:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "MutedApps"

    const-string v2, "initializeInstance has not been called yet. Returning null instance."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    sget-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->sInstance:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPackageName(Lcom/google/android/gms/wearable/DataItem;)Ljava/lang/String;
    .locals 5
    .param p1, "dataItem"    # Lcom/google/android/gms/wearable/DataItem;

    .prologue
    .line 320
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "MutedApps"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const-string v2, "MutedApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from uri path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    return-object v0
.end method

.method private getPathForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "mutedapps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDataEvent(Lcom/google/android/gms/wearable/DataEvent;I)V
    .locals 2
    .param p1, "event"    # Lcom/google/android/gms/wearable/DataEvent;
    .param p2, "type"    # I

    .prologue
    .line 315
    new-instance v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->getPackageName(Lcom/google/android/gms/wearable/DataItem;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->applyToCache(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;)V

    .line 316
    invoke-direct {p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->pingListeners()V

    .line 317
    return-void
.end method

.method private initializeCacheAsync()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    new-instance v1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;-><init>(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/gmsclient/DataManager;->getDataItemsAsync(Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemsCallback;)V

    .line 190
    return-void
.end method

.method public static initializeInstance(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;)Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataManager"    # Lcom/google/android/wearable/gmsclient/DataManager;

    .prologue
    .line 59
    sget-object v1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->sInstance:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "initializeInstance was already called"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;-><init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;)V

    sput-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->sInstance:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    .line 65
    sget-object v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->sInstance:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private opAcked(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "future":Lcom/google/android/wearable/gmsclient/WearableFuture;, "Lcom/google/android/wearable/gmsclient/WearableFuture<Lcom/google/android/gms/wearable/DataItem;>;"
    const/4 v2, 0x0

    .line 259
    .local v2, "success":Z
    sget-object v4, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mSyncInProgress:Z

    .line 262
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;

    .line 263
    .local v1, "op":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    const-string v3, "MutedApps"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const-string v3, "MutedApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "opAcked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/wearable/gmsclient/WearableFuture;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    const/4 v2, 0x1

    .line 275
    :goto_0
    if-eqz v2, :cond_1

    .line 276
    :try_start_2
    invoke-direct {p0, v1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->applyToCache(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;)V

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->syncOps()V

    .line 279
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    if-eqz v2, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->pingListeners()V

    .line 284
    :cond_2
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MutedApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error syncing op "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "op":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 272
    .restart local v1    # "op":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    :try_start_4
    const-string v3, "MutedApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error syncing op "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private pingListeners()V
    .locals 5

    .prologue
    .line 196
    const-string v3, "MutedApps"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const-string v3, "MutedApps"

    const-string v4, "pingListeners"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v2, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;>;"
    sget-object v4, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mListeners:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 203
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;

    .line 205
    .local v1, "listener":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;
    invoke-interface {v1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;->onMutedAppsListInvalidated()V

    goto :goto_0

    .line 203
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 207
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private syncOps()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 214
    sget-object v4, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    const-string v3, "MutedApps"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const-string v3, "MutedApps"

    const-string v5, "no ops to sync"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    monitor-exit v4

    .line 252
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mSyncInProgress:Z

    if-eqz v3, :cond_3

    .line 222
    const-string v3, "MutedApps"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const-string v3, "MutedApps"

    const-string v5, "sync already in progress"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 227
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;

    .line 228
    .local v0, "op":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    const-string v3, "MutedApps"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    const-string v3, "MutedApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync op: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mSyncInProgress:Z

    .line 232
    iget-object v3, v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->getPathForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "path":Ljava/lang/String;
    iget v3, v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mType:I

    if-ne v3, v7, :cond_6

    .line 234
    invoke-static {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v2

    .line 235
    .local v2, "request":Lcom/google/android/gms/wearable/PutDataMapRequest;
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;->asPutDataRequest()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$2;

    invoke-direct {v6, p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$2;-><init>(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V

    invoke-virtual {v3, v5, v6}, Lcom/google/android/wearable/gmsclient/DataManager;->putDataItemAsync(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;)V

    .line 251
    .end local v2    # "request":Lcom/google/android/gms/wearable/PutDataMapRequest;
    :cond_5
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 242
    :cond_6
    iget v3, v0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 243
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    new-instance v5, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$3;

    invoke-direct {v5, p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$3;-><init>(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V

    invoke-virtual {v3, v1, v5}, Lcom/google/android/wearable/gmsclient/DataManager;->deleteDataItemAsync(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMutedApps()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v4, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "key_muted_apps"

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v4

    .line 141
    :goto_0
    return-object v1

    .line 127
    :cond_0
    const-string v3, "MutedApps"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const-string v3, "MutedApps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overlaying ops, count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v1, "mutableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "key_muted_apps"

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v3, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;

    .line 135
    .local v2, "operation":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    iget v3, v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 136
    iget-object v3, v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mutableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "operation":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 137
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "mutableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "operation":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    :cond_3
    :try_start_1
    iget v3, v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 138
    iget-object v3, v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v2    # "operation":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public muteApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "MutedApps"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "MutedApps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    sget-object v1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->syncOps()V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 8
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 292
    const-string v2, "MutedApps"

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const-string v2, "MutedApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataEvent;

    .line 296
    .local v0, "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    const-string v2, "MutedApps"

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    const-string v2, "MutedApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data event type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 300
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->handleDataEvent(Lcom/google/android/gms/wearable/DataEvent;I)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 302
    invoke-direct {p0, v0, v6}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->handleDataEvent(Lcom/google/android/gms/wearable/DataEvent;I)V

    goto :goto_0

    .line 304
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unrecognized data event type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    .end local v0    # "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    :cond_4
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 0
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 347
    return-void
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 352
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 357
    return-void
.end method

.method public registerListener(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public unmuteApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "MutedApps"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "MutedApps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmuteApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    sget-object v1, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mOps:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Operation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->syncOps()V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$Listener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

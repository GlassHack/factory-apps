.class Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;
.super Ljava/lang/Object;
.source "MutedAppsList.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->initializeCacheAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;->this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDataItemsComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "future":Lcom/google/android/wearable/gmsclient/WearableFuture;, "Lcom/google/android/wearable/gmsclient/WearableFuture<Ljava/util/List<Lcom/google/android/gms/wearable/DataItem;>;>;"
    invoke-static {}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->access$000()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 164
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/wearable/gmsclient/WearableFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataItem;>;"
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v2, "gmsCoreNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wearable/DataItem;

    .line 174
    .local v4, "item":Lcom/google/android/gms/wearable/DataItem;
    invoke-interface {v4}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v8, "mutedapps"

    invoke-static {v6, v8}, Lcom/google/android/clockwork/host/WearableHostUtil;->isForFeature(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    iget-object v6, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;->this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-static {v6, v4}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->access$100(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;Lcom/google/android/gms/wearable/DataItem;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v2    # "gmsCoreNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/google/android/gms/wearable/DataItem;
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MutedApps"

    const-string v8, "Error initializing cache"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    monitor-exit v7

    .line 188
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 168
    :catch_1
    move-exception v1

    .line 169
    .local v1, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v6, "MutedApps"

    const-string v8, "Error initializing cache"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    monitor-exit v7

    goto :goto_1

    .line 179
    .end local v1    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    .restart local v2    # "gmsCoreNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataItem;>;"
    :cond_1
    iget-object v6, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;->this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-virtual {v6}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->getMutedApps()Ljava/util/Set;

    move-result-object v0

    .line 180
    .local v0, "cachedNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    monitor-exit v7

    goto :goto_1

    .line 185
    :cond_2
    iget-object v6, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;->this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-static {v6}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->access$200(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "key_muted_apps"

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    iget-object v6, p0, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList$1;->this$0:Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    invoke-static {v6}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->access$300(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V

    goto :goto_1
.end method

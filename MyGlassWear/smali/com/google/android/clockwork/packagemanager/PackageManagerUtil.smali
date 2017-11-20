.class public Lcom/google/android/clockwork/packagemanager/PackageManagerUtil;
.super Ljava/lang/Object;
.source "PackageManagerUtil.java"


# static fields
.field private static final PACKAGE_PREPEND_KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WearablePkgInstaller"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "package_manager"

    const-string v1, "/package/"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/packagemanager/PackageManagerUtil;->PACKAGE_PREPEND_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataItemNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/clockwork/packagemanager/PackageManagerUtil;->PACKAGE_PREPEND_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageFdForPackageWithName(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 52
    invoke-static {p0}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v1

    .line 53
    .local v1, "client":Lcom/google/android/wearable/gmsclient/WearableClient;
    if-nez v1, :cond_0

    .line 54
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Wearable client is null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v11

    invoke-static {p1}, Lcom/google/android/clockwork/packagemanager/PackageManagerUtil;->getDataItemNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/wearable/gmsclient/DataManager;->getDataItem(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataItem;

    move-result-object v2

    .line 59
    .local v2, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    if-nez v2, :cond_2

    .line 60
    const-string v11, "WearablePkgInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find dataItem for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v2    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    :cond_1
    :goto_0
    return-object v10

    .line 63
    .restart local v2    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v6

    .line 64
    .local v6, "mapDataItem":Lcom/google/android/gms/wearable/DataMapItem;
    if-eqz v6, :cond_1

    .line 65
    invoke-virtual {v6}, Lcom/google/android/gms/wearable/DataMapItem;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v11

    const-string/jumbo v12, "wearables"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/wearable/DataMap;->getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v8

    .line 66
    .local v8, "wearableMap":Lcom/google/android/gms/wearable/DataMap;
    if-eqz v8, :cond_4

    .line 67
    invoke-virtual {v8}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 68
    .local v7, "mapKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 69
    .local v9, "wearablePackageName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lcom/google/android/gms/wearable/DataMap;->getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v3

    .line 70
    .local v3, "dataMap":Lcom/google/android/gms/wearable/DataMap;
    if-eqz v3, :cond_3

    .line 71
    const-string v11, "apk"

    invoke-virtual {v3, v11}, Lcom/google/android/gms/wearable/DataMap;->getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    .line 72
    .local v0, "asset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->getAssetManager()Lcom/google/android/wearable/gmsclient/AssetManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/google/android/wearable/gmsclient/AssetManager;->getFdForAsset(Lcom/google/android/gms/wearable/Asset;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    goto :goto_0

    .line 78
    .end local v0    # "asset":Lcom/google/android/gms/wearable/Asset;
    .end local v3    # "dataMap":Lcom/google/android/gms/wearable/DataMap;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "mapKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "wearablePackageName":Ljava/lang/String;
    :cond_4
    const-string v11, "WearablePkgInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did not find an asset for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 80
    .end local v2    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    .end local v6    # "mapDataItem":Lcom/google/android/gms/wearable/DataMapItem;
    .end local v8    # "wearableMap":Lcom/google/android/gms/wearable/DataMap;
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Landroid/os/RemoteException;
    const-string v11, "WearablePkgInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error finding asset for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 83
    .local v4, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v11, "WearablePkgInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error finding asset for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getPackageNameFromDataItemName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/clockwork/packagemanager/PackageManagerUtil;->PACKAGE_PREPEND_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/google/android/clockwork/packagemanager/PackageManagerUtil;->PACKAGE_PREPEND_KEY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPermissionsForPackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "grantedPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "ungrantedPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 91
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 92
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Either package name or perms list were null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_1
    invoke-static {p0}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v0

    .line 95
    .local v0, "client":Lcom/google/android/wearable/gmsclient/WearableClient;
    if-nez v0, :cond_2

    .line 96
    const-string v5, "WearablePkgInstaller"

    const-string v6, "WearableClient is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return v4

    .line 100
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/clockwork/packagemanager/PackageManagerUtil;->getDataItemNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/wearable/gmsclient/DataManager;->getDataItem(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataItem;

    move-result-object v1

    .line 102
    .local v1, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    if-nez v1, :cond_3

    .line 103
    const-string v5, "WearablePkgInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find dataItem for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 116
    .end local v1    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "WearablePkgInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error finding asset for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/wearable/DataMapItem;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    .line 107
    .local v2, "dataMap":Lcom/google/android/gms/wearable/DataMap;
    const-string v5, "host_granted_permissions"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/wearable/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    const-string v5, "host_granted_permissions"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/wearable/DataMap;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_4
    const-string v5, "host_ungranted_permissions"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/wearable/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    const-string v5, "host_ungranted_permissions"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/wearable/DataMap;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    .end local v2    # "dataMap":Lcom/google/android/gms/wearable/DataMap;
    :catch_1
    move-exception v3

    .line 120
    .local v3, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v5, "WearablePkgInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error finding asset for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

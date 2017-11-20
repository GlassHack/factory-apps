.class public Lcom/google/glass/boutique/PackageManagerService;
.super Landroid/app/Service;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;,
        Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;,
        Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;
    }
.end annotation


# static fields
.field public static final GLASSWARE_LOGO_HEIGHT:I = 0x96

.field public static final GLASSWARE_LOGO_WIDTH:I = 0x96

.field public static final INTENT_EXTRA_GLASSWARE:Ljava/lang/String;

.field public static final INTENT_EXTRA_GLASSWARE_ID:Ljava/lang/String;

.field private static final LIVE_CARD_TAG:Ljava/lang/String; = "NewPermissionsLiveCard"

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final STATUS_USER_ACTION_REQUIRED:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private packageHelper:Lcom/google/glass/boutique/PackageHelper;

.field private final packageManagerServiceBinder:Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

.field final pendingGlasswares:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;",
            ">;"
        }
    .end annotation
.end field

.field private final uninstalledGlasswareTracker:Lcom/google/glass/boutique/UninstalledGlasswareTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/google/glass/boutique/PackageManagerService;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".GlasswareId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/PackageManagerService;->INTENT_EXTRA_GLASSWARE_ID:Ljava/lang/String;

    .line 54
    const-class v0, Lcom/google/glass/boutique/PackageManagerService;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Glassware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/PackageManagerService;->INTENT_EXTRA_GLASSWARE:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    .line 63
    new-instance v0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;-><init>(Lcom/google/glass/boutique/PackageManagerService;)V

    iput-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->packageManagerServiceBinder:Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    .line 67
    new-instance v0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;

    invoke-direct {v0, p0}, Lcom/google/glass/boutique/UninstalledGlasswareTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->uninstalledGlasswareTracker:Lcom/google/glass/boutique/UninstalledGlasswareTracker;

    .line 408
    return-void
.end method

.method static getBrandColor(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)I
    .locals 2
    .param p0, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getBrandColor()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "brandColorString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v0, "#222222"

    .line 253
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static getLiveCardTag(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Ljava/lang/String;
    .locals 5
    .param p0, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    .line 277
    const-string v0, "NewPermissionsLiveCard:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUnacknowledgedPermissions(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/collect/ImmutableSet;
    .locals 7
    .param p0, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 263
    sget-object v3, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Getting unacknowledged permissions [packageName=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 265
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 263
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 267
    .local v1, "unacknowledgedPermissions":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;>;"
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v3

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->permission:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 268
    .local v0, "permission":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->FSGPD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->getIsAcknowledged()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->getRequiresUserAcknowledgement()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 267
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "permission":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method getLocalizedPermissionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "androidPermission"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    sget v0, Lcom/google/glass/boutique/R$string;->glassware_permission_location:I

    invoke-virtual {p0, v0}, Lcom/google/glass/boutique/PackageManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 295
    :cond_1
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    sget v0, Lcom/google/glass/boutique/R$string;->glassware_permission_camera:I

    invoke-virtual {p0, v0}, Lcom/google/glass/boutique/PackageManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_2
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    sget v0, Lcom/google/glass/boutique/R$string;->glassware_permission_microphone:I

    invoke-virtual {p0, v0}, Lcom/google/glass/boutique/PackageManagerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method internalGetAllGlasswareUninstalledByUser()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->uninstalledGlasswareTracker:Lcom/google/glass/boutique/UninstalledGlasswareTracker;

    invoke-virtual {v0}, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->getAllGlassware()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method internalInstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p2, "isPermissionAcknowledgement"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getVersionNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    .local v3, "targetVersion":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v5, v2}, Lcom/google/glass/boutique/PackageHelper;->getPackageVersion(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    .local v1, "installedVersion":Ljava/lang/Integer;
    invoke-static {p1}, Lcom/google/glass/boutique/PackageManagerService;->getUnacknowledgedPermissions(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    .line 124
    .local v4, "unacknowledgedPermissions":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;>;"
    invoke-virtual {v3, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    :cond_0
    sget-object v5, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Glassware already up to date [id=%s, packageName=%s, installedVersion=%s]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 127
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    .line 126
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 160
    :goto_0
    return-object v5

    .line 131
    :cond_1
    sget-object v5, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Glassware packageName=%s unackedPermissionsEmpty=%s isPermissionAck=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    .line 133
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    .line 131
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p2, :cond_4

    .line 137
    :cond_2
    sget-object v5, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Installing Glassware [id=%s, packageName=%s, installedVersion=v%s, targetVersion=%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    .line 137
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    iget-object v6, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v6}, Lcom/google/glass/boutique/PackageHelper;->getActiveDownloads()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/google/glass/boutique/PackageHelper;->installRemotePackage(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Ljava/util/Map;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Package installation interrupted [packageName=%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 145
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 143
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v5, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Package installation failed [packageName=%s]."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 147
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 152
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_4
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->SGPD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    sget-object v5, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Publishing permissions acknowledgement card for Glassware [id=%s, packageName=%s, installedVersion=v%s, targetVersion=%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    .line 153
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p0, p1, v4}, Lcom/google/glass/boutique/PackageManagerService;->publishPermissionsAcknowledgementCard(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    goto/16 :goto_0
.end method

.method internalRecordUninstallForGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Z
    .locals 1
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->uninstalledGlasswareTracker:Lcom/google/glass/boutique/UninstalledGlasswareTracker;

    invoke-virtual {v0, p1}, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->recordGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Z

    move-result v0

    return v0
.end method

.method internalRemoveUninstallRecord(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->uninstalledGlasswareTracker:Lcom/google/glass/boutique/UninstalledGlasswareTracker;

    invoke-virtual {v0, p1}, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->removeGlassware(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method internalUninstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V
    .locals 10
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasLastModifiedTimestampUs()Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v1, -0x1

    .line 175
    .local v1, "requestStartTimeUs":J
    :goto_0
    iget-object v3, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v3, v0}, Lcom/google/glass/boutique/PackageHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    sget-object v3, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Uninstalling Glassware [id=%s, packageName=%s]"

    new-array v5, v5, [Ljava/lang/Object;

    .line 178
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    .line 176
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v3, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/glass/boutique/PackageHelper;->uninstallPackage(Ljava/lang/String;J)V

    .line 184
    :goto_1
    return-void

    .line 173
    .end local v1    # "requestStartTimeUs":J
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getLastModifiedTimestampUs()J

    move-result-wide v1

    goto :goto_0

    .line 181
    .restart local v1    # "requestStartTimeUs":J
    :cond_1
    sget-object v3, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Glassware is already uninstalled [id=%s, packageName=%s]"

    new-array v5, v5, [Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    .line 181
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    sget-object v0, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Binding to PackageManagerService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->packageManagerServiceBinder:Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    sget-object v0, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating PackageManagerService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/google/glass/boutique/PackageHelperProvider;->getInstance()Lcom/google/glass/boutique/PackageHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/boutique/PackageHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/boutique/PackageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 79
    sget-object v2, Lcom/google/glass/boutique/PackageManagerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Destroying PackageManagerService."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 81
    .local v0, "glasswareId":J
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;

    invoke-virtual {v2}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->unpublishLiveCard()V

    goto :goto_0

    .line 83
    .end local v0    # "glasswareId":J
    :cond_0
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->packageHelper:Lcom/google/glass/boutique/PackageHelper;

    invoke-virtual {v2}, Lcom/google/glass/boutique/PackageHelper;->onDestroy()V

    .line 87
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 88
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method publishPermissionsAcknowledgementCard(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 14
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "unacknowledgedPermissions":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;>;"
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;

    invoke-virtual {v2}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->unpublishLiveCard()V

    .line 199
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v9, "localizedPermissionStringsBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;

    .line 202
    .local v12, "permission":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/boutique/PackageManagerService;->getLocalizedPermissionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v3, "\n"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    .end local v12    # "permission":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Permission;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "permissions":Ljava/lang/String;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageManagerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/glass/boutique/R$layout;->permissions_card:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 208
    .local v1, "newPermissionsView":Landroid/widget/RemoteViews;
    sget v2, Lcom/google/glass/boutique/R$id;->icon_holder:I

    const-string v3, "setBackgroundColor"

    invoke-static {p1}, Lcom/google/glass/boutique/PackageManagerService;->getBrandColor(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 210
    new-instance v0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;

    sget v2, Lcom/google/glass/boutique/R$id;->large_glassware_icon:I

    .line 212
    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 213
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/util/CachedBitmapFactory;

    .line 214
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x96

    const/16 v7, 0x96

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 216
    .local v0, "imageLoader":Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v2, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->postLoadToUiThread(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 218
    sget v2, Lcom/google/glass/boutique/R$id;->glassware_name:I

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 219
    sget v2, Lcom/google/glass/boutique/R$id;->new_permissions_required:I

    sget v3, Lcom/google/glass/boutique/R$string;->new_permissions_required:I

    .line 220
    invoke-virtual {p0, v3}, Lcom/google/glass/boutique/PackageManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    sget v2, Lcom/google/glass/boutique/R$id;->new_permissions_list:I

    invoke-virtual {v1, v2, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    sget v2, Lcom/google/glass/boutique/R$id;->tap_instructions:I

    sget v3, Lcom/google/glass/boutique/R$string;->tap_to_approve:I

    .line 223
    invoke-virtual {p0, v3}, Lcom/google/glass/boutique/PackageManagerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 225
    new-instance v11, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;

    .line 226
    invoke-static {p1}, Lcom/google/glass/boutique/PackageManagerService;->getLiveCardTag(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, p0, v2, v0}, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 227
    .local v11, "newPermissionsLiveCard":Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;
    invoke-virtual {v0, v11}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$RemoteViewsImageProxyBitmapLoadingTask;->setLiveCardForUpdate(Lcom/google/android/glass/timeline/LiveCard;)V

    .line 228
    invoke-virtual {v11, v1}, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->setViews(Landroid/widget/RemoteViews;)Lcom/google/android/glass/timeline/LiveCard;

    .line 229
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    .line 230
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;

    invoke-direct {v4, p1, v11}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;-><init>(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;)V

    .line 229
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/boutique/NewPermissionsMenuActivity;

    invoke-direct {v10, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v10, "menuIntent":Landroid/content/Intent;
    sget-object v2, Lcom/google/glass/boutique/PackageManagerService;->INTENT_EXTRA_GLASSWARE_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 236
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    const/high16 v3, 0x10000000

    .line 235
    invoke-static {p0, v2, v10, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 234
    invoke-virtual {v11, v2}, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->setAction(Landroid/app/PendingIntent;)Lcom/google/android/glass/timeline/LiveCard;

    .line 238
    sget-object v2, Lcom/google/android/glass/timeline/LiveCard$PublishMode;->REVEAL:Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    invoke-virtual {v11, v2}, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->publish(Lcom/google/android/glass/timeline/LiveCard$PublishMode;)V

    .line 240
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

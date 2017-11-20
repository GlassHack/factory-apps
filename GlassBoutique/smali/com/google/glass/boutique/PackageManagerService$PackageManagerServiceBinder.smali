.class public Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;
.super Landroid/os/Binder;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageManagerServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/google/glass/boutique/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/PackageManagerService;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method acceptPermissionsAndInstallGlassware(J)V
    .locals 4
    .param p1, "glasswareId"    # J

    .prologue
    .line 337
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    iget-object v1, v1, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    iget-object v1, v1, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;

    .line 339
    .local v0, "pendingGlassware":Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;
    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->unpublishLiveCard()V

    .line 340
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    .line 341
    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->getGlassware()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v2

    const/4 v3, 0x1

    .line 340
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/boutique/PackageManagerService;->internalInstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 343
    .end local v0    # "pendingGlassware":Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;
    :cond_0
    return-void
.end method

.method declinePermissionsAndUninstallGlassware(J)V
    .locals 3
    .param p1, "glasswareId"    # J

    .prologue
    .line 362
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    iget-object v1, v1, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    iget-object v1, v1, Lcom/google/glass/boutique/PackageManagerService;->pendingGlasswares:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;

    .line 364
    .local v0, "pendingGlassware":Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;
    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->unpublishLiveCard()V

    .line 365
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->getGlassware()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/boutique/PackageManagerService;->internalRecordUninstallForGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Z

    .line 366
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->getGlassware()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/boutique/PackageManagerService;->internalUninstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V

    .line 368
    .end local v0    # "pendingGlassware":Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;
    :cond_0
    return-void
.end method

.method public getAllGlasswareUninstalledByUser()Lcom/google/common/collect/ImmutableList;
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
    .line 371
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService;->internalGetAllGlasswareUninstalledByUser()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public installGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/boutique/PackageManagerService;->internalInstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public uninstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V
    .locals 2
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/PackageManagerService;->internalRemoveUninstallRecord(Ljava/lang/String;)Z

    .line 351
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->this$0:Lcom/google/glass/boutique/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/google/glass/boutique/PackageManagerService;->internalUninstallGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V

    .line 352
    return-void
.end method

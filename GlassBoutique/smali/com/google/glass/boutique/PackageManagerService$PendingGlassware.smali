.class Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingGlassware"
.end annotation


# instance fields
.field private glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

.field private liveCard:Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;)V
    .locals 0
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p2, "liveCard"    # Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 382
    iput-object p2, p0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->liveCard:Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;

    .line 383
    return-void
.end method


# virtual methods
.method public getGlassware()Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    return-object v0
.end method

.method public getLiveCard()Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->liveCard:Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;

    return-object v0
.end method

.method public unpublishLiveCard()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->liveCard:Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->liveCard:Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerService$PendingGlassware;->liveCard:Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerService$LoadingTaskLiveCard;->unpublish()V

    .line 400
    :cond_0
    return-void
.end method

.class final Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;
.super Ljava/lang/Object;
.source "GlasswareSyncAdapter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/GlasswareSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReportResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

.field private final isUpdate:Z

.field private final isVersionUpdate:Z

.field private final packageName:Ljava/lang/String;

.field private final showCard:Z

.field final synthetic this$0:Lcom/google/glass/boutique/GlasswareSyncAdapter;

.field private final timelineItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/glass/boutique/GlasswareSyncAdapter;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;ZZZLjava/lang/String;)V
    .locals 1
    .param p2, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p3, "isUpdate"    # Z
    .param p4, "isVersionUpdate"    # Z
    .param p5, "showCard"    # Z
    .param p6, "timelineItemId"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->this$0:Lcom/google/glass/boutique/GlasswareSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 546
    iput-boolean p3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->isUpdate:Z

    .line 547
    iput-boolean p4, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->isVersionUpdate:Z

    .line 548
    iput-boolean p5, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->showCard:Z

    .line 549
    iput-object p6, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->timelineItemId:Ljava/lang/String;

    .line 550
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->packageName:Ljava/lang/String;

    .line 551
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 575
    invoke-static {}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to update. Will retry [packageName=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    iget-boolean v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->isUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->showCard:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->this$0:Lcom/google/glass/boutique/GlasswareSyncAdapter;

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->access$100(Lcom/google/glass/boutique/GlasswareSyncAdapter;)Lcom/google/glass/boutique/GlasswareCardHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->timelineItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->INSTALL_RETRYING:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/boutique/GlasswareCardHelper;->updateGlasswareCard(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;Z)V

    .line 584
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "installStatus"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 555
    iget-boolean v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->showCard:Z

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 557
    invoke-static {}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Package requires user action.  Removing glassware card [packageName=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->this$0:Lcom/google/glass/boutique/GlasswareSyncAdapter;

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->access$100(Lcom/google/glass/boutique/GlasswareSyncAdapter;)Lcom/google/glass/boutique/GlasswareCardHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->timelineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/GlasswareCardHelper;->removeGlasswareCard(Ljava/lang/String;)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->isUpdate:Z

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Successfully installed [packageName=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->this$0:Lcom/google/glass/boutique/GlasswareSyncAdapter;

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->access$100(Lcom/google/glass/boutique/GlasswareSyncAdapter;)Lcom/google/glass/boutique/GlasswareCardHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->timelineItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    sget-object v3, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->INSTALL_COMPLETE:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/boutique/GlasswareCardHelper;->updateGlasswareCard(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;Z)V

    .line 568
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->this$0:Lcom/google/glass/boutique/GlasswareSyncAdapter;

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareSyncAdapter;->access$200(Lcom/google/glass/boutique/GlasswareSyncAdapter;)Lcom/google/glass/boutique/PackageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/PackageHelper;->broadcastInstallIntent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 531
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/glass/boutique/GlasswareSyncAdapter$ReportResultCallback;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method

.class Lcom/google/glass/boutique/PackageHelper$2;
.super Landroid/os/AsyncTask;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/PackageHelper;->installRemotePackage(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Ljava/util/Map;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/PackageHelper;

.field final synthetic val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

.field final synthetic val$requestStartTimeUs:J


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/PackageHelper;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/PackageHelper;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/glass/boutique/PackageHelper$2;->this$0:Lcom/google/glass/boutique/PackageHelper;

    iput-object p2, p0, Lcom/google/glass/boutique/PackageHelper$2;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    iput-wide p3, p0, Lcom/google/glass/boutique/PackageHelper$2;->val$requestStartTimeUs:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$2;->this$0:Lcom/google/glass/boutique/PackageHelper;

    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper$2;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 290
    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/PackageHelper;->fetch(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper$2;->this$0:Lcom/google/glass/boutique/PackageHelper;

    iget-object v3, p0, Lcom/google/glass/boutique/PackageHelper$2;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 292
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/glass/boutique/PackageHelper$2;->val$requestStartTimeUs:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;-><init>(Lcom/google/glass/boutique/PackageHelper;Ljava/lang/String;J)V

    .line 289
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/boutique/PackageHelper$2;->doInBackground([Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

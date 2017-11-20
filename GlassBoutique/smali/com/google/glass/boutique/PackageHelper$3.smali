.class Lcom/google/glass/boutique/PackageHelper$3;
.super Ljava/lang/Object;
.source "PackageHelper.java"

# interfaces
.implements Lcom/google/android/glass/hidden/HiddenPackageManager$PackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/PackageHelper;->installPackage(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/PackageHelper;

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/PackageHelper;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/PackageHelper;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/glass/boutique/PackageHelper$3;->this$0:Lcom/google/glass/boutique/PackageHelper;

    iput-object p2, p0, Lcom/google/glass/boutique/PackageHelper$3;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 312
    if-gez p2, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$3;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/glass/boutique/PackageInstallationException;

    invoke-direct {v1, p2}, Lcom/google/glass/boutique/PackageInstallationException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$3;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

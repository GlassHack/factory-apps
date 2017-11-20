.class Lcom/google/glass/boutique/BootDownloadCleaner$1;
.super Ljava/lang/Object;
.source "BootDownloadCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/BootDownloadCleaner;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/BootDownloadCleaner;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isBootCompleted:Z

.field final synthetic val$primaryAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/BootDownloadCleaner;Landroid/content/Context;ZLandroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/BootDownloadCleaner;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->this$0:Lcom/google/glass/boutique/BootDownloadCleaner;

    iput-object p2, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->val$isBootCompleted:Z

    iput-object p4, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->this$0:Lcom/google/glass/boutique/BootDownloadCleaner;

    iget-object v1, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->val$isBootCompleted:Z

    iget-object v3, p0, Lcom/google/glass/boutique/BootDownloadCleaner$1;->val$primaryAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/boutique/BootDownloadCleaner;->processStartup(Landroid/content/Context;ZLandroid/accounts/Account;)V

    .line 104
    return-void
.end method

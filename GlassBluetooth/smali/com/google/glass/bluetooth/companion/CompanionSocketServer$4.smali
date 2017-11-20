.class Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;
.super Ljava/lang/Object;
.source "CompanionSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyVersionMismatch(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

.field final synthetic val$companionVersion:I

.field final synthetic val$glassVersion:I


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iput p2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;->val$glassVersion:I

    iput p3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;->val$companionVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 632
    iget v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;->val$glassVersion:I

    invoke-static {v1}, Lcom/google/glass/companion/CompanionVersionUtils;->getMajorVersion(I)I

    move-result v1

    iget v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;->val$companionVersion:I

    .line 633
    invoke-static {v2}, Lcom/google/glass/companion/CompanionVersionUtils;->getMajorVersion(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 635
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/bluetooth/R$string;->version_mismatch_require_glass_ota:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    .line 637
    invoke-virtual {v1, v0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;)V

    .line 643
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

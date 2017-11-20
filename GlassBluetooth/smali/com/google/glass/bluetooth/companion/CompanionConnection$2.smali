.class Lcom/google/glass/bluetooth/companion/CompanionConnection$2;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/CompanionConnection;->showMessageFromCompanion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 426
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$2;->val$message:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;)V

    .line 428
    return-void
.end method

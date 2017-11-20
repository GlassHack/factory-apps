.class Lcom/google/glass/bluetooth/companion/CompanionConnection$1;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/CompanionConnection;->startNavigationFromCompanion(Lcom/google/glass/companion/Proto$NavigationRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

.field final synthetic val$request:Lcom/google/glass/companion/Proto$NavigationRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Lcom/google/glass/companion/Proto$NavigationRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$1;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$1;->val$request:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 413
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$1;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->wakeupScreen()V

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$1;->val$request:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection$1;->this$0:Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 417
    return-void
.end method

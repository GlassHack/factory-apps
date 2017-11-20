.class Lcom/google/glass/companion/RemoteCompanionProxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

.field final synthetic val$listener:Lcom/google/glass/companion/CompanionStateChangeListener;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object p2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->val$listener:Lcom/google/glass/companion/CompanionStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 266
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$900()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->val$listener:Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 268
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$900()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1000(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1100(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v3

    .line 267
    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->val$listener:Lcom/google/glass/companion/CompanionStateChangeListener;

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 271
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1000(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1100(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v3

    .line 270
    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    goto :goto_0
.end method

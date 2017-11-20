.class Lcom/google/glass/companion/RemoteCompanionProxy$3;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

.field final synthetic val$listener:Lcom/google/glass/companion/CompanionStateChangeListener;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object p2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->val$listener:Lcom/google/glass/companion/CompanionStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->val$listener:Lcom/google/glass/companion/CompanionStateChangeListener;

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 341
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1000(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$3;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1100(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v3

    .line 340
    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    .line 342
    return-void
.end method

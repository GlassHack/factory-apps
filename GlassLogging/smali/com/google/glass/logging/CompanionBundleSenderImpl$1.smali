.class Lcom/google/glass/logging/CompanionBundleSenderImpl$1;
.super Ljava/lang/Object;
.source "CompanionBundleSenderImpl.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/CompanionBundleSenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/CompanionBundleSenderImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/CompanionBundleSenderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/CompanionBundleSenderImpl;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl$1;->this$0:Lcom/google/glass/logging/CompanionBundleSenderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onStateChange(ZII)V
    .locals 2
    .param p1, "isConnected"    # Z
    .param p2, "remoteVersion"    # I
    .param p3, "localVersion"    # I

    .prologue
    .line 23
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl$1;->this$0:Lcom/google/glass/logging/CompanionBundleSenderImpl;

    invoke-static {v0}, Lcom/google/glass/logging/CompanionBundleSenderImpl;->access$000(Lcom/google/glass/logging/CompanionBundleSenderImpl;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl$1;->this$0:Lcom/google/glass/logging/CompanionBundleSenderImpl;

    iget-object v1, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl$1;->this$0:Lcom/google/glass/logging/CompanionBundleSenderImpl;

    invoke-static {v1}, Lcom/google/glass/logging/CompanionBundleSenderImpl;->access$000(Lcom/google/glass/logging/CompanionBundleSenderImpl;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/CompanionBundleSenderImpl;->sendBundleToCompanion(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl$1;->this$0:Lcom/google/glass/logging/CompanionBundleSenderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/logging/CompanionBundleSenderImpl;->access$002(Lcom/google/glass/logging/CompanionBundleSenderImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

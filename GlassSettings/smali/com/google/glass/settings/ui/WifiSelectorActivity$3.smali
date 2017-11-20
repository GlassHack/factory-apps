.class Lcom/google/glass/settings/ui/WifiSelectorActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WifiSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WifiSelectorActivity;->connectToNetwork(ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WifiSelectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WifiSelectorActivity;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 383
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$400(Lcom/google/glass/settings/ui/WifiSelectorActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$300(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connection attempt in-progress to %d, aborting."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v3}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$400(Lcom/google/glass/settings/ui/WifiSelectorActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$400(Lcom/google/glass/settings/ui/WifiSelectorActivity;)I

    move-result v1

    invoke-static {v0, v1, v5, v4}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$500(Lcom/google/glass/settings/ui/WifiSelectorActivity;IZZ)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$3;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->finish()V

    .line 388
    return-void
.end method

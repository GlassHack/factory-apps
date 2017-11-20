.class Lcom/google/glass/maps/NavigationActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    if-eqz p2, :cond_1

    const-string v0, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ANA:Lcom/google/glass/util/Labs$Feature;

    .line 152
    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->access$000(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from companion app"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    sget v2, Lcom/google/glass/maps/R$string;->myglass_lost_connection_title:I

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    sget v3, Lcom/google/glass/maps/R$string;->myglass_lost_connection_hint:I

    .line 158
    invoke-virtual {v2, v3}, Lcom/google/glass/maps/NavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 157
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/glass/maps/NavigationActivity;->showFatalError(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->access$100(Lcom/google/glass/maps/NavigationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->hideFatalError()V

    .line 165
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->access$200(Lcom/google/glass/maps/NavigationActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->paneManager:Lcom/google/glass/maps/NavigationPaneManager;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationActivity;->access$200(Lcom/google/glass/maps/NavigationActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$2;->this$0:Lcom/google/glass/maps/NavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->access$202(Lcom/google/glass/maps/NavigationActivity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

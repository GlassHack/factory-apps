.class Lcom/google/glass/maps/NavigationActivity$12$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/NavigationActivity$12;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity$12;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$12$1;->this$1:Lcom/google/glass/maps/NavigationActivity$12;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12$1;->this$1:Lcom/google/glass/maps/NavigationActivity$12;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$12$1;->this$1:Lcom/google/glass/maps/NavigationActivity$12;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity$12;->this$0:Lcom/google/glass/maps/NavigationActivity;

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    goto :goto_0
.end method

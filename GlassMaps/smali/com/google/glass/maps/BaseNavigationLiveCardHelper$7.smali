.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$7;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$7;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    const-string v1, "showTripsExtra"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$7;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

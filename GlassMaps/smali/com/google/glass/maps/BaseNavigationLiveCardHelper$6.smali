.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

.field final synthetic val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iput-object p2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;->val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 379
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;->val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-le v0, v3, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0, v3}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$902(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Z)Z

    .line 383
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/glass/maps/ImmersiveLiveCardNavigationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 385
    const-string v1, "showDestinationsExtra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$6;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 388
    :cond_0
    return-void
.end method

.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

.field final synthetic val$routes:[Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;[Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iput-object p2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;->val$routes:[Lcom/google/android/maps/driveabout/nav/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;->val$routes:[Lcom/google/android/maps/driveabout/nav/w;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 366
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$5;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 370
    :cond_0
    return-void
.end method

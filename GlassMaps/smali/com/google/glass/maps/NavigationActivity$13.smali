.class Lcom/google/glass/maps/NavigationActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;

.field final synthetic val$routes:[Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$13;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iput-object p2, p0, Lcom/google/glass/maps/NavigationActivity$13;->val$routes:[Lcom/google/android/maps/driveabout/nav/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$13;->val$routes:[Lcom/google/android/maps/driveabout/nav/w;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1019
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$13;->this$0:Lcom/google/glass/maps/NavigationActivity;

    const-class v2, Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1020
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1021
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$13;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/NavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1023
    :cond_0
    return-void
.end method

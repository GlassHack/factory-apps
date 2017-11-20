.class Lcom/google/android/apps/lightcycle/MainMenuActivity$1;
.super Ljava/lang/Object;
.source "MainMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/MainMenuActivity;->setUpMenuButton(ILjava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

.field final synthetic val$activityClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/MainMenuActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$1;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$1;->val$activityClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$1;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$1;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$1;->val$activityClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

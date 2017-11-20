.class Lcom/google/android/apps/lightcycle/MainMenuActivity$2;
.super Ljava/lang/Object;
.source "MainMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/MainMenuActivity;->setUpFeedbackButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/MainMenuActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$2;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$2;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->access$000(Lcom/google/android/apps/lightcycle/MainMenuActivity;)Lcom/google/android/apps/lightcycle/util/FeedbackUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$2;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/MainMenuActivity$2;->this$0:Lcom/google/android/apps/lightcycle/MainMenuActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/MainMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/util/FeedbackUtil;->startFeedback(Landroid/app/Activity;Landroid/view/View;)V

    .line 132
    return-void
.end method

.class Lcom/google/glass/settings/ui/WifiSelectorActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WifiSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WifiSelectorActivity;->hideBarcodeViewfinder()V
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
    .line 616
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$6;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSelectorActivity$6;->this$0:Lcom/google/glass/settings/ui/WifiSelectorActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSelectorActivity;->access$1200(Lcom/google/glass/settings/ui/WifiSelectorActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 620
    return-void
.end method

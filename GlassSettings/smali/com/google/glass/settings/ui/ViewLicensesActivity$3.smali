.class Lcom/google/glass/settings/ui/ViewLicensesActivity$3;
.super Ljava/lang/Object;
.source "ViewLicensesActivity.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/ViewLicensesActivity;->showLicense(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCountChange(I)V
    .locals 3
    .param p1, "pages"    # I

    .prologue
    const/4 v2, 0x1

    .line 316
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$500(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 317
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$500(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$1000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/html/PagedWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$700(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 323
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0, v2}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$1102(Lcom/google/glass/settings/ui/ViewLicensesActivity;Z)Z

    .line 324
    return-void
.end method

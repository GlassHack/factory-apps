.class Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedbackActivity;->configureActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

.field final synthetic val$cx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;->val$cx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "currentView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "adapterParent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$600(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "userChoice":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;->val$cx:Landroid/content/Context;

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_anonymous:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v1

    iput-object v0, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v1

    const-string v2, ""

    iput-object v2, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    .line 241
    return-void
.end method

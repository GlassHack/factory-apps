.class Lcom/google/android/gsf/login/RecoveryDataActivity$1;
.super Ljava/lang/Object;
.source "RecoveryDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/RecoveryDataActivity;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/RecoveryDataActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$000(Lcom/google/android/gsf/login/RecoveryDataActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$100(Lcom/google/android/gsf/login/RecoveryDataActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    const-string v0, ""

    .line 235
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$200(Lcom/google/android/gsf/login/RecoveryDataActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$300(Lcom/google/android/gsf/login/RecoveryDataActivity;)Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;->EMAIL_ONLY:Lcom/google/android/gsf/login/RecoveryDataActivity$Detail;

    if-eq v3, v4, :cond_2

    .line 236
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$400(Lcom/google/android/gsf/login/RecoveryDataActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 237
    .local v1, "pos":I
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$200(Lcom/google/android/gsf/login/RecoveryDataActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;

    iget-object v0, v3, Lcom/google/android/gsf/login/RecoveryDataActivity$DisplayCountry;->code:Ljava/lang/String;

    .line 239
    .end local v1    # "pos":I
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v2, "result":Landroid/content/Intent;
    const-string v3, "r_secondaryEmail"

    iget-object v4, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v4}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$500(Lcom/google/android/gsf/login/RecoveryDataActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v3, "r_phone_number"

    iget-object v4, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-static {v4}, Lcom/google/android/gsf/login/RecoveryDataActivity;->access$600(Lcom/google/android/gsf/login/RecoveryDataActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v3, "r_country"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gsf/login/RecoveryDataActivity;->setResult(ILandroid/content/Intent;)V

    .line 246
    iget-object v3, p0, Lcom/google/android/gsf/login/RecoveryDataActivity$1;->this$0:Lcom/google/android/gsf/login/RecoveryDataActivity;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/RecoveryDataActivity;->finish()V

    goto :goto_0
.end method

.class Lcom/google/android/gsf/login/UsernamePasswordActivity$3;
.super Landroid/text/style/ClickableSpan;
.source "UsernamePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/UsernamePasswordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$200(Lcom/google/android/gsf/login/UsernamePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v0

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$300(Lcom/google/android/gsf/login/UsernamePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v0

    iput-object v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->setResult(I)V

    .line 257
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->finish()V

    .line 258
    return-void
.end method

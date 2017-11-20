.class Lcom/google/android/gsf/login/CreateAccountActivity$3;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/CreateAccountActivity;->showTryAgainDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/CreateAccountActivity;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/android/gsf/login/CreateAccountActivity$3;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity$3;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountActivity$3;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountActivity$3;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-static {v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->access$100(Lcom/google/android/gsf/login/CreateAccountActivity;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountActivity$3;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-static {v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->access$200(Lcom/google/android/gsf/login/CreateAccountActivity;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/login/GetCountryListTask;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x40f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 487
    return-void
.end method

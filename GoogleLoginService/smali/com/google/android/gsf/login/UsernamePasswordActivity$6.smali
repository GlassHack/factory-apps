.class Lcom/google/android/gsf/login/UsernamePasswordActivity$6;
.super Ljava/lang/Object;
.source "UsernamePasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/UsernamePasswordActivity;->showAgreementDialog()V
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
    .line 432
    iput-object p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$6;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$6;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$402(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z

    .line 436
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$6;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->start()V

    .line 437
    return-void
.end method

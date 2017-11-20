.class Lcom/google/android/gsf/login/CreateAccountActivity$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 499
    iput-object p1, p0, Lcom/google/android/gsf/login/CreateAccountActivity$1;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity$1;->this$0:Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->access$000(Lcom/google/android/gsf/login/CreateAccountActivity;)V

    .line 506
    return-void
.end method

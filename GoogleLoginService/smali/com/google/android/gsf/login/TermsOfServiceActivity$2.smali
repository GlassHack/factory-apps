.class Lcom/google/android/gsf/login/TermsOfServiceActivity$2;
.super Ljava/lang/Object;
.source "TermsOfServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/TermsOfServiceActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/TermsOfServiceActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$2;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$2;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setResult(I)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$2;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->finish()V

    .line 56
    return-void
.end method

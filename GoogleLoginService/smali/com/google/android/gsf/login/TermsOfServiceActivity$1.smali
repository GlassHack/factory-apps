.class Lcom/google/android/gsf/login/TermsOfServiceActivity$1;
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
    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$1;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$1;->this$0:Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->start()V

    .line 49
    return-void
.end method

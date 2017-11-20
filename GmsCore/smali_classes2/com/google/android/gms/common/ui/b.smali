.class final Lcom/google/android/gms/common/ui/b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/gms/common/ui/b;->a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/common/ui/b;->a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->b(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/common/ui/b;->a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->a(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/common/ui/b;->a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->a(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    :cond_0
    return-void
.end method

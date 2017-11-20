.class final Lcom/google/android/gms/common/ui/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/gms/common/ui/a;->a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/common/ui/a;->a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->a(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/common/ui/a;->a:Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;->a(Lcom/google/android/gms/common/ui/AuthenticatingWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    return-void
.end method

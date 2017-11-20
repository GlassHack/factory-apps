.class Lcom/google/android/gsf/login/BrowserActivity$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/BrowserActivity;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BrowserActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserActivity$2;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    iput-object p2, p0, Lcom/google/android/gsf/login/BrowserActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$2;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Lcom/google/android/gsf/login/CustomWebView;

    iget-object v1, p0, Lcom/google/android/gsf/login/BrowserActivity$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 216
    return-void
.end method

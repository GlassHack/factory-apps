.class Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$3;
.super Ljava/lang/Object;
.source "WebAnswerViewJavascriptEnvironment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$3;->this$1:Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient;

    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerViewJavascriptEnvironment$WebAnswerViewChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 607
    return-void
.end method

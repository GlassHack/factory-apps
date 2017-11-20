.class Lcom/google/glass/browser/ClutchHelperProvider$1;
.super Ljava/lang/Object;
.source "ClutchHelperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/ClutchHelperProvider;->get(Lcom/google/glass/time/Clock;Lcom/google/glass/browser/WebBrowserWebView;Landroid/view/View;Landroid/view/View;Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/userevent/UserEventHelper;)Lcom/google/glass/browser/ClutchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/browser/ClutchHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/ClutchHelperProvider;

.field final synthetic val$clock:Lcom/google/glass/time/Clock;

.field final synthetic val$clutchModeFrameView:Landroid/view/View;

.field final synthetic val$reticleView:Landroid/view/View;

.field final synthetic val$tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

.field final synthetic val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field final synthetic val$webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/ClutchHelperProvider;Lcom/google/glass/time/Clock;Lcom/google/glass/browser/WebBrowserWebView;Landroid/view/View;Landroid/view/View;Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/ClutchHelperProvider;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->this$0:Lcom/google/glass/browser/ClutchHelperProvider;

    iput-object p2, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$clock:Lcom/google/glass/time/Clock;

    iput-object p3, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    iput-object p4, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$clutchModeFrameView:Landroid/view/View;

    iput-object p5, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$reticleView:Landroid/view/View;

    iput-object p6, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    iput-object p7, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/browser/ClutchHelper;
    .locals 7

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/browser/ClutchHelper;

    iget-object v1, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$clock:Lcom/google/glass/time/Clock;

    iget-object v2, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$webBrowserWebView:Lcom/google/glass/browser/WebBrowserWebView;

    iget-object v3, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$clutchModeFrameView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$reticleView:Landroid/view/View;

    iget-object v5, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$tipsViewHelper:Lcom/google/glass/browser/TipsViewHelper;

    iget-object v6, p0, Lcom/google/glass/browser/ClutchHelperProvider$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/browser/ClutchHelper;-><init>(Lcom/google/glass/time/Clock;Lcom/google/glass/browser/WebBrowserWebView;Landroid/view/View;Landroid/view/View;Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/userevent/UserEventHelper;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/glass/browser/ClutchHelperProvider$1;->get()Lcom/google/glass/browser/ClutchHelper;

    move-result-object v0

    return-object v0
.end method

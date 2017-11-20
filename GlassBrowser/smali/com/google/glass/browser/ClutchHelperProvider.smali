.class Lcom/google/glass/browser/ClutchHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "ClutchHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/browser/ClutchHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/browser/ClutchHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/browser/ClutchHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/browser/ClutchHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/browser/ClutchHelperProvider;->instance:Lcom/google/glass/browser/ClutchHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/google/glass/browser/ClutchHelperProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/browser/ClutchHelperProvider;->instance:Lcom/google/glass/browser/ClutchHelperProvider;

    return-object v0
.end method


# virtual methods
.method get(Lcom/google/glass/time/Clock;Lcom/google/glass/browser/WebBrowserWebView;Landroid/view/View;Landroid/view/View;Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/userevent/UserEventHelper;)Lcom/google/glass/browser/ClutchHelper;
    .locals 8
    .param p1, "clock"    # Lcom/google/glass/time/Clock;
    .param p2, "webBrowserWebView"    # Lcom/google/glass/browser/WebBrowserWebView;
    .param p3, "clutchModeFrameView"    # Landroid/view/View;
    .param p4, "reticleView"    # Landroid/view/View;
    .param p5, "tipsViewHelper"    # Lcom/google/glass/browser/TipsViewHelper;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 33
    const-string v0, "null clock"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "null webBrowserWebView"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "null clutchModeFrameView"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "null reticleView"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "null tipsViewHelper"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "null userEventHelper"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/glass/browser/ClutchHelperProvider$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/browser/ClutchHelperProvider$1;-><init>(Lcom/google/glass/browser/ClutchHelperProvider;Lcom/google/glass/time/Clock;Lcom/google/glass/browser/WebBrowserWebView;Landroid/view/View;Landroid/view/View;Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/browser/ClutchHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/ClutchHelper;

    return-object v0
.end method

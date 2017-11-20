.class final Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;
.super Ljava/lang/ref/SoftReference;
.source "WebBrowserPreloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/WebBrowserPreloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SoftReferenceWithUrl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;",
        ">;"
    }
.end annotation


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "preloadedWebBrowserWebView"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 162
    iput-object p2, p0, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;->url:Ljava/lang/String;

    .line 163
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$SoftReferenceWithUrl;->url:Ljava/lang/String;

    return-object v0
.end method

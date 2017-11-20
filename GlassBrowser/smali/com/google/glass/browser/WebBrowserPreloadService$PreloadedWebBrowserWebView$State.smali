.class final enum Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;
.super Ljava/lang/Enum;
.source "WebBrowserPreloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

.field public static final enum FAILED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

.field public static final enum INIT:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

.field public static final enum LOADED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

.field public static final enum LOADING:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->INIT:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 176
    new-instance v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->LOADING:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 177
    new-instance v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->LOADED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 178
    new-instance v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->FAILED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->INIT:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->LOADING:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->LOADED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->FAILED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->$VALUES:[Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->$VALUES:[Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    invoke-virtual {v0}, [Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    return-object v0
.end method

.class public Lcom/google/android/gsf/login/CustomWebView;
.super Landroid/webkit/WebView;
.source "CustomWebView.java"


# instance fields
.field mAllowLongClicks:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public allowLongClicks(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/gsf/login/CustomWebView;->mAllowLongClicks:Z

    .line 38
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/gsf/login/CustomWebView;->mAllowLongClicks:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0}, Landroid/webkit/WebView;->performLongClick()Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

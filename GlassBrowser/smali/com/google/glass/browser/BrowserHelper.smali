.class public Lcom/google/glass/browser/BrowserHelper;
.super Ljava/lang/Object;
.source "BrowserHelper.java"


# static fields
.field public static final EXTRA_USER_EVENT_CONTEXT_DATA:Ljava/lang/String; = "userEventContextData"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBrowserUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    const/4 p0, 0x0

    .line 31
    :cond_0
    :goto_0
    return-object p0

    .line 28
    :cond_1
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "http://"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static invokeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userEventContextData"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/glass/browser/BrowserHelper;->formatBrowserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .local v0, "browserIntent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 50
    const-string v1, "userEventContextData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_1
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

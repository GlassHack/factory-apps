.class public Lcom/google/glass/locale/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getStringInLocale(Landroid/content/Context;ILjava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringId"    # I
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 22
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 23
    .local v0, "assets":Landroid/content/res/AssetManager;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 24
    .local v1, "conf":Landroid/content/res/Configuration;
    iput-object p2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 25
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 26
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/content/res/Resources;

    invoke-direct {v5, v0, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v5, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v0, v2, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 31
    return-object v4
.end method

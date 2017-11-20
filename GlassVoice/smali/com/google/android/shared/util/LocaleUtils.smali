.class public Lcom/google/android/shared/util/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJavaLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 12
    .param p0, "localeString"    # Ljava/lang/String;
    .param p1, "defaultLocale"    # Ljava/util/Locale;

    .prologue
    const/16 v11, 0x5f

    const/4 v10, -0x1

    .line 19
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 41
    .end local p1    # "defaultLocale":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-object p1

    .line 22
    .restart local p1    # "defaultLocale":Ljava/util/Locale;
    :cond_1
    const/16 v5, 0x5f

    .line 23
    .local v5, "separator":C
    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 24
    .local v2, "pos1":I
    if-ne v2, v10, :cond_2

    .line 25
    new-instance p1, Ljava/util/Locale;

    .end local p1    # "defaultLocale":Ljava/util/Locale;
    invoke-direct {p1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    .restart local p1    # "defaultLocale":Ljava/util/Locale;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "language":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .line 30
    .local v6, "start2":I
    invoke-virtual {p0, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 31
    .local v3, "pos2":I
    if-ne v3, v10, :cond_3

    .line 32
    new-instance p1, Ljava/util/Locale;

    .end local p1    # "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p1, v1, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .restart local p1    # "defaultLocale":Ljava/util/Locale;
    :cond_3
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "country":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    .line 37
    .local v7, "start3":I
    invoke-virtual {p0, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 38
    .local v4, "pos3":I
    if-ne v4, v10, :cond_4

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "variant":Ljava/lang/String;
    :goto_1
    new-instance p1, Ljava/util/Locale;

    .end local p1    # "defaultLocale":Ljava/util/Locale;
    invoke-direct {p1, v1, v0, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v8    # "variant":Ljava/lang/String;
    .restart local p1    # "defaultLocale":Ljava/util/Locale;
    :cond_4
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

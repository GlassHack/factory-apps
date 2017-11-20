.class public Lcom/google/android/gsf/SAMLUtils;
.super Ljava/lang/Object;
.source "SAMLUtils.java"


# static fields
.field private static final DEFAULT_HOSTED_BASE_PATH:Ljava/lang/String; = "https://www.google.com"

.field private static final HOSTED_PREFIX:Ljava/lang/String; = "/a/"

.field private static final TEST_GAIA_HOSTED_BASE_PATH:Ljava/lang/String; = "http://dasher-qa.corp.google.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cookieString"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string v6, ""

    .line 118
    :goto_0
    return-object v6

    .line 111
    :cond_0
    const-string v6, "; "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "cookieFragments":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 113
    .local v1, "cookieFragment":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    const/4 v6, 0x1

    aget-object v6, v5, v6

    goto :goto_0

    .line 112
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "cookieFragment":Ljava/lang/String;
    .end local v5    # "nameValue":[Ljava/lang/String;
    :cond_2
    const-string v6, ""

    goto :goto_0
.end method

.method public static extractHID(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "cookieManager"    # Landroid/webkit/CookieManager;
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-static {v5, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "HIDExtractionPath":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HID"

    invoke-static {v3, v4}, Lcom/google/android/gsf/SAMLUtils;->extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "HID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-static {v5, p1}, Lcom/google/android/gsf/SAMLUtils;->makeLSIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "LSIDExtractionPath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LSID"

    invoke-static {v3, v4}, Lcom/google/android/gsf/SAMLUtils;->extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .end local v2    # "LSIDExtractionPath":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static final getHostedBaseUrl(Z)Ljava/lang/String;
    .locals 2
    .param p0, "useTestGaia"    # Z

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, "http://dasher-qa.corp.google.com"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/a/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "https://www.google.com"

    goto :goto_0
.end method

.method private static makeHIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "useTestGaia"    # Z
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "useTestGaia"    # Z
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/gsf/SAMLUtils;->getHostedBaseUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeLSIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "useTestGaia"    # Z
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    const-string v0, "http://dasher-qa.corp.google.com"

    .line 78
    .local v0, "url":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/accounts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "https://www.google.com"

    goto :goto_0
.end method

.method public static makeWebLoginStartUrl(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "useTestGaia"    # Z
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ServiceLogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

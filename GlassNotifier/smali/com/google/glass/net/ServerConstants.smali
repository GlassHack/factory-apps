.class public Lcom/google/glass/net/ServerConstants;
.super Ljava/lang/Object;
.source "ServerConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/ServerConstants$Action;
    }
.end annotation


# static fields
.field private static final AUTOPUSH_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final AUTOPUSH_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.sandbox.google.com/autopush/fe/"

.field private static final AUTOPUSH_PATH_COMPONENT:Ljava/lang/String; = "autopush"

.field private static final CHECK_SETUP_ACCESS_SUFFIX:Ljava/lang/String; = "_/checksetupaccess"

.field private static final CLIENT_PROXY_PATH_COMPONENT:Ljava/lang/String; = "cp"

.field private static final DEV_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final DEV_PATH_COMPONENT:Ljava/lang/String; = "dev"

.field private static final GLASSWARE_PAGE_SUFFIX:Ljava/lang/String; = "glassware"

.field public static final HELP_LINK:Ljava/lang/String; = "http://www.google.com/glass/help"

.field private static final MY_GLASS_PAGE_SUFFIX:Ljava/lang/String; = "myglass"

.field private static final PROD_DOMAIN:Ljava/lang/String; = "clients2.google.com"

.field private static final PROD_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.google.com/"

.field private static final PROD_PATH_COMPONENT:Ljava/lang/String; = "glass"

.field private static final QA_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final QA_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.sandbox.google.com/qa/fe/"

.field private static final QA_PATH_COMPONENT:Ljava/lang/String; = "qa"

.field private static final SETUP_PAGE_SUFFIX:Ljava/lang/String; = "ml2"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ServerConstants;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "b"

    invoke-static {v0}, Lcom/google/glass/net/ServerConstants;->makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckSetupAccessUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "_/checksetupaccess"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFrontendPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "https://glass.google.com/"

    return-object v0
.end method

.method public static getGlasswareUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "glassware"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMyGlassUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "myglass"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getResumableUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "uploads"

    invoke-static {v0}, Lcom/google/glass/net/ServerConstants;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRootUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 158
    invoke-static {}, Lcom/google/glass/util/ServerEnvironmentUtil;->getServerEnvironment()Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;

    move-result-object v3

    .line 159
    .local v3, "serverEnvironment":Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;
    sget-object v4, Lcom/google/glass/net/ServerConstants$1;->$SwitchMap$com$google$glass$util$ServerEnvironmentUtil$ServerEnvironment:[I

    invoke-virtual {v3}, Lcom/google/glass/util/ServerEnvironmentUtil$ServerEnvironment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 178
    const-string v0, "clients2.google.com"

    .line 179
    .local v0, "domain":Ljava/lang/String;
    const-string v1, "glass"

    .line 182
    .local v1, "environmentPath":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "https://"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "rootUrl":Ljava/lang/String;
    sget-object v4, Lcom/google/glass/net/ServerConstants;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-object v2

    .line 161
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "environmentPath":Ljava/lang/String;
    .end local v2    # "rootUrl":Ljava/lang/String;
    :pswitch_0
    const-string v0, "glass.sandbox.google.com"

    .line 162
    .restart local v0    # "domain":Ljava/lang/String;
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->SERVER_COMPONENT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .restart local v1    # "environmentPath":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "environmentPath":Ljava/lang/String;
    :pswitch_1
    const-string v0, "glass.sandbox.google.com"

    .line 166
    .restart local v0    # "domain":Ljava/lang/String;
    const-string v1, "qa"

    .line 167
    .restart local v1    # "environmentPath":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "environmentPath":Ljava/lang/String;
    :pswitch_2
    const-string v0, "glass.sandbox.google.com"

    .line 170
    .restart local v0    # "domain":Ljava/lang/String;
    const-string v1, "autopush"

    .line 171
    .restart local v1    # "environmentPath":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "environmentPath":Ljava/lang/String;
    :pswitch_3
    const-string v0, "glass.sandbox.google.com"

    .line 174
    .restart local v0    # "domain":Ljava/lang/String;
    const-string v1, "dev"

    .line 175
    .restart local v1    # "environmentPath":Ljava/lang/String;
    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSetupPageUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "ml2"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cp"

    .line 195
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method static makeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?hl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

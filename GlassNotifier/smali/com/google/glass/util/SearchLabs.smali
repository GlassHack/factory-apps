.class public Lcom/google/glass/util/SearchLabs;
.super Ljava/lang/Object;
.source "SearchLabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/SearchLabs$Feature;
    }
.end annotation


# static fields
.field private static final BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

.field static final PROPERTY_PREFIX:Ljava/lang/String; = "persist.search.lab."
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SANDBOX_SERVER_KEY:Ljava/lang/String; = "persist.search.server"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SearchLabs;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    invoke-static {}, Lcom/google/glass/build/BuildHelperProvider;->getInstance()Lcom/google/glass/build/BuildHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/build/BuildHelperProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/build/BuildHelper;

    sput-object v0, Lcom/google/glass/util/SearchLabs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabsHeader()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, "value":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/glass/util/SearchLabs$Feature;->values()[Lcom/google/glass/util/SearchLabs$Feature;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 96
    .local v0, "feature":Lcom/google/glass/util/SearchLabs$Feature;
    invoke-static {v0}, Lcom/google/glass/util/SearchLabs;->getValue(Lcom/google/glass/util/SearchLabs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 99
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/util/SearchLabs$Feature;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "feature":Lcom/google/glass/util/SearchLabs$Feature;
    :cond_2
    sget-object v2, Lcom/google/glass/util/SearchLabs;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Producing search labs header. [labsHeader=%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSandboxId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const-string v0, "persist.search.server"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Lcom/google/glass/util/SearchLabs$Feature;)Z
    .locals 2
    .param p0, "feature"    # Lcom/google/glass/util/SearchLabs$Feature;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/google/glass/util/SearchLabs$Feature;->access$000(Lcom/google/glass/util/SearchLabs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/google/glass/util/SearchLabs$Feature;->access$100(Lcom/google/glass/util/SearchLabs$Feature;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 81
    :cond_0
    sget-object v0, Lcom/google/glass/util/SearchLabs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    invoke-interface {v0}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/util/SearchLabs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    invoke-interface {v0}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/SearchLabs$Feature;->access$200(Lcom/google/glass/util/SearchLabs$Feature;)Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {p0}, Lcom/google/glass/util/SearchLabs$Feature;->access$300(Lcom/google/glass/util/SearchLabs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/glass/util/SearchLabs$Feature;->access$200(Lcom/google/glass/util/SearchLabs$Feature;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/SearchLabs$Feature;Z)V
    .locals 0
    .param p0, "feature"    # Lcom/google/glass/util/SearchLabs$Feature;
    .param p1, "value"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 117
    invoke-static {p0, p1}, Lcom/google/glass/util/SearchLabs$Feature;->access$400(Lcom/google/glass/util/SearchLabs$Feature;Z)V

    .line 118
    return-void
.end method

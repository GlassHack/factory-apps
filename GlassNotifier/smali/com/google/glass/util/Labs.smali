.class public Lcom/google/glass/util/Labs;
.super Ljava/lang/Object;
.source "Labs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/Labs$Feature;
    }
.end annotation


# static fields
.field private static final BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

.field static final MAX_PROPERTY_LENGTH:I = 0x1f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROPERTY_PREFIX:Ljava/lang/String; = "persist.lab."
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    invoke-static {}, Lcom/google/glass/build/BuildHelperProvider;->getInstance()Lcom/google/glass/build/BuildHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/build/BuildHelperProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/build/BuildHelper;

    sput-object v0, Lcom/google/glass/util/Labs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/build/BuildHelper;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/util/Labs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    return-object v0
.end method

.method public static assertIsEnabled(Lcom/google/glass/util/Labs$Feature;)V
    .locals 2
    .param p0, "feature"    # Lcom/google/glass/util/Labs$Feature;

    .prologue
    .line 631
    invoke-static {p0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature is disabled."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    return-void
.end method

.method public static getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;
    .locals 2
    .param p0, "feature"    # Lcom/google/glass/util/Labs$Feature;

    .prologue
    .line 611
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$200(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$300(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    .line 616
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    invoke-interface {v0}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/util/Labs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    invoke-interface {v0}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 621
    :cond_2
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$100(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isEnabled(Lcom/google/glass/util/Labs$Feature;)Z
    .locals 1
    .param p0, "feature"    # Lcom/google/glass/util/Labs$Feature;

    .prologue
    .line 558
    invoke-static {p0}, Lcom/google/glass/util/Labs;->getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Lcom/google/glass/util/Labs$Feature;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6
    .param p0, "feature"    # Lcom/google/glass/util/Labs$Feature;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    invoke-static {p0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    :goto_0
    return v1

    .line 583
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 584
    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Lab %s enabled without installing required package: %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object p2, v5, v2

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setEnabled(Lcom/google/glass/util/Labs$Feature;Z)V
    .locals 6
    .param p0, "feature"    # Lcom/google/glass/util/Labs$Feature;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 597
    sget-object v2, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "setEnabled() [feature=%s, enabled=%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    sget-object v2, Lcom/google/glass/util/Labs;->BUILD_HELPER:Lcom/google/glass/build/BuildHelper;

    invoke-interface {v2}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    const-string v1, "Cannot set feature enabled state on user builds!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 600
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$100(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void

    :cond_0
    move v0, v1

    .line 598
    goto :goto_0
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V
    .locals 0
    .param p0, "feature"    # Lcom/google/glass/util/Labs$Feature;
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 640
    invoke-static {p0, p1}, Lcom/google/glass/util/Labs$Feature;->access$400(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Z)V
    .locals 1
    .param p0, "feature"    # Lcom/google/glass/util/Labs$Feature;
    .param p1, "value"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 646
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/util/Labs;->setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V

    .line 647
    return-void
.end method

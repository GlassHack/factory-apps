.class public Lcom/google/glass/util/Labs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAX_PROPERTY_LENGTH:I = 0x1f

.field static final PROPERTY_PREFIX:Ljava/lang/String; = "persist.lab."

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method

.method public static assertIsEnabled(Lcom/google/glass/util/Labs$Feature;)V
    .locals 2

    .prologue
    .line 606
    invoke-static {p0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This feature is disabled."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    return-void
.end method

.method public static getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$100(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$200(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_0
    return-object v0

    .line 591
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 596
    :cond_2
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$000(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isEnabled(Lcom/google/glass/util/Labs$Feature;)Z
    .locals 1

    .prologue
    .line 534
    invoke-static {p0}, Lcom/google/glass/util/Labs;->getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Lcom/google/glass/util/Labs$Feature;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 553
    invoke-static {p0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    :goto_0
    return v0

    .line 559
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 560
    goto :goto_0

    .line 561
    :catch_0
    move-exception v2

    .line 562
    sget-object v3, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Lab %s enabled without installing required package: %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v0

    aput-object p2, v5, v1

    invoke-interface {v3, v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setEnabled(Lcom/google/glass/util/Labs$Feature;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 573
    sget-object v2, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "setEnabled() [feature=%s, enabled=%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    const-string v1, "Cannot set feature enabled state on user builds!"

    invoke-static {v0, v1}, Lcom/google/common/base/ah;->b(ZLjava/lang/Object;)V

    .line 575
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$000(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void

    :cond_0
    move v0, v1

    .line 574
    goto :goto_0
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 614
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 615
    invoke-static {p0, p1}, Lcom/google/glass/util/Labs$Feature;->access$300(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Z)V
    .locals 1

    .prologue
    .line 621
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/util/Labs;->setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V

    .line 622
    return-void
.end method

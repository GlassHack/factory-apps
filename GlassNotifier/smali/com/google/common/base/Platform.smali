.class final Lcom/google/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Platform$JdkPatternCompiler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final patternCompiler:Lcom/google/common/base/PatternCompiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/common/base/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    .line 34
    invoke-static {}, Lcom/google/common/base/Platform;->loadPatternCompiler()Lcom/google/common/base/PatternCompiler;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Platform;->patternCompiler:Lcom/google/common/base/PatternCompiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compilePattern(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/common/base/Platform;->patternCompiler:Lcom/google/common/base/PatternCompiler;

    invoke-interface {v0, p0}, Lcom/google/common/base/PatternCompiler;->compile(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;

    move-result-object v0

    return-object v0
.end method

.method static formatCompact4Digits(D)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # D

    .prologue
    .line 55
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%.4g"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getEnumIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Enums;->getEnumConstants(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 49
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;"
    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadPatternCompiler()Lcom/google/common/base/PatternCompiler;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/common/base/Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Platform$JdkPatternCompiler;-><init>(Lcom/google/common/base/Platform$1;)V

    return-object v0
.end method

.method private static logPatternCompilerError(Ljava/util/ServiceConfigurationError;)V
    .locals 6
    .param p0, "e"    # Ljava/util/ServiceConfigurationError;

    .prologue
    .line 81
    sget-object v0, Lcom/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.common.base.Platform"

    const-string v3, "logPatternCompilerError"

    const-string v4, "Error loading regex compiler, falling back to next option"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method static precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p0, "matcher"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->precomputedInternal()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method static stringIsNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static systemNanoTime()J
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static usingJdkPatternCompiler()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/common/base/Platform;->patternCompiler:Lcom/google/common/base/PatternCompiler;

    instance-of v0, v0, Lcom/google/common/base/Platform$JdkPatternCompiler;

    return v0
.end method

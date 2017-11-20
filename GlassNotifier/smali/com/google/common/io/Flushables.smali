.class public final Lcom/google/common/io/Flushables;
.super Ljava/lang/Object;
.source "Flushables.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/common/io/Flushables;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/io/Flushables;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flush(Ljava/io/Flushable;Z)V
    .locals 6
    .param p0, "flushable"    # Ljava/io/Flushable;
    .param p1, "swallowIOException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v5

    .line 54
    .local v5, "e":Ljava/io/IOException;
    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Lcom/google/common/io/Flushables;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.common.io.Flushables"

    const-string v3, "flush"

    const-string v4, "IOException thrown while flushing Flushable."

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 57
    :cond_0
    throw v5
.end method

.method public static flushQuietly(Ljava/io/Flushable;)V
    .locals 6
    .param p0, "flushable"    # Ljava/io/Flushable;

    .prologue
    .line 70
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/common/io/Flushables;->flush(Ljava/io/Flushable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v5

    .line 72
    .local v5, "e":Ljava/io/IOException;
    sget-object v0, Lcom/google/common/io/Flushables;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.io.Flushables"

    const-string v3, "flushQuietly"

    const-string v4, "IOException should not have been thrown."

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

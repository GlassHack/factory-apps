.class public final Lcom/google/googlenav/common/io/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "FLASH"

    .line 19
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/io/a/g;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;I[B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    move v0, v1

    .line 33
    :goto_0
    if-lez p2, :cond_1

    .line 34
    invoke-virtual {p1, p3, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 35
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 36
    const-string v2, "Read %s bytes from %s; expected %s more"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v2, Lcom/google/googlenav/common/io/a/g;->a:Lcom/google/glass/logging/FormattingLogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    sub-int/2addr p2, v2

    .line 42
    add-int/2addr v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

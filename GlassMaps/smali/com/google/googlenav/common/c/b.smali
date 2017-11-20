.class public final Lcom/google/googlenav/common/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/c/c;


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "MAPS"

    .line 27
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/c/b;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/google/googlenav/common/c/b;->b:I

    .line 32
    iput v0, p0, Lcom/google/googlenav/common/c/b;->c:I

    .line 82
    return-void
.end method

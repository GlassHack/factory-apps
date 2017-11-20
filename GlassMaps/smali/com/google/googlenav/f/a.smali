.class public final Lcom/google/googlenav/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/f/a;->a:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 121
    sget-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/PersistentStore;->a()V

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/google/googlenav/f/b;

    invoke-static {}, Lcom/google/googlenav/i;->a()Lcom/google/googlenav/common/d/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/f/b;-><init>(Lcom/google/googlenav/common/d/c;)V

    .line 134
    invoke-virtual {v0}, Lcom/google/googlenav/f/b;->e()V

    goto :goto_0
.end method

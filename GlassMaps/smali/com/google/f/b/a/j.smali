.class public final Lcom/google/f/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;

.field public static final b:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/f/b/a/j;->a:Lcom/google/googlenav/common/io/b/d;

    .line 90
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/f/b/a/j;->b:Lcom/google/googlenav/common/io/b/d;

    .line 92
    sget-object v0, Lcom/google/f/b/a/j;->a:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x11e

    .line 93
    invoke-virtual {v0, v1, v4, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/f/b/a/j;->b:Lcom/google/googlenav/common/io/b/d;

    .line 96
    invoke-virtual {v0, v1, v5, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 100
    sget-object v0, Lcom/google/f/b/a/j;->b:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x124

    .line 101
    invoke-virtual {v0, v1, v4, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/16 v1, 0x224

    .line 104
    invoke-virtual {v0, v1, v5, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 108
    return-void
.end method

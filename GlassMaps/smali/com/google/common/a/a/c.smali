.class public final Lcom/google/common/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;

.field public static final b:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/16 v3, 0x215

    .line 18
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/common/a/a/c;->a:Lcom/google/googlenav/common/io/b/d;

    .line 19
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/common/a/a/c;->b:Lcom/google/googlenav/common/io/b/d;

    .line 21
    sget-object v0, Lcom/google/common/a/a/c;->a:Lcom/google/googlenav/common/io/b/d;

    .line 22
    invoke-virtual {v0, v3, v7, v4}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    .line 27
    invoke-static {v5, v6}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v3, v8, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/16 v1, 0x415

    const/4 v2, 0x4

    .line 28
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 32
    sget-object v0, Lcom/google/common/a/a/c;->b:Lcom/google/googlenav/common/io/b/d;

    .line 35
    invoke-static {v5, v6}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v3, v7, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/4 v1, 0x2

    .line 38
    invoke-static {v5, v6}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v3, v8, v4}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/4 v1, 0x4

    .line 42
    invoke-virtual {v0, v3, v1, v4}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 46
    return-void
.end method

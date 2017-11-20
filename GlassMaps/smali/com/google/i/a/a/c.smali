.class public final Lcom/google/i/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;

.field public static final b:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x21e

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x21b

    .line 27
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/i/a/a/c;->a:Lcom/google/googlenav/common/io/b/d;

    .line 28
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/i/a/a/c;->b:Lcom/google/googlenav/common/io/b/d;

    .line 30
    sget-object v0, Lcom/google/i/a/a/c;->a:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/i/a/a/a;->A:Lcom/google/googlenav/common/io/b/d;

    .line 31
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 36
    invoke-static {v1, v2}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v7, v6, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    sget-object v1, Lcom/google/i/a/a/e;->y:Lcom/google/googlenav/common/io/b/d;

    .line 37
    invoke-virtual {v0, v3, v5, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/google/i/a/a/d;->a:Lcom/google/googlenav/common/io/b/d;

    .line 40
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 44
    sget-object v0, Lcom/google/i/a/a/c;->b:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/i/a/a/a;->B:Lcom/google/googlenav/common/io/b/d;

    .line 45
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 50
    invoke-static {v1, v2}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v7, v6, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    sget-object v1, Lcom/google/i/a/a/e;->y:Lcom/google/googlenav/common/io/b/d;

    .line 51
    invoke-virtual {v0, v3, v5, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 55
    return-void
.end method

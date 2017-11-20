.class public final Lcom/google/f/e/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;

.field public static final b:Lcom/google/googlenav/common/io/b/d;

.field public static final c:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x21b

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x224

    .line 20
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/f/e/b/k;->a:Lcom/google/googlenav/common/io/b/d;

    .line 21
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/f/e/b/k;->b:Lcom/google/googlenav/common/io/b/d;

    .line 22
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/f/e/b/k;->c:Lcom/google/googlenav/common/io/b/d;

    .line 24
    sget-object v0, Lcom/google/f/e/b/k;->a:Lcom/google/googlenav/common/io/b/d;

    sget-object v1, Lcom/google/f/e/b/k;->b:Lcom/google/googlenav/common/io/b/d;

    .line 25
    invoke-virtual {v0, v6, v4, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    sget-object v1, Lcom/google/f/e/b/k;->c:Lcom/google/googlenav/common/io/b/d;

    .line 28
    invoke-virtual {v0, v6, v5, v1}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 32
    sget-object v0, Lcom/google/f/e/b/k;->b:Lcom/google/googlenav/common/io/b/d;

    .line 33
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v2, v5, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/4 v1, 0x3

    .line 39
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 43
    sget-object v0, Lcom/google/f/e/b/k;->c:Lcom/google/googlenav/common/io/b/d;

    .line 44
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 48
    return-void
.end method

.class public final Lcom/google/i/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;

.field public static final b:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x224

    const/4 v3, 0x1

    .line 15
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/i/a/a/d;->a:Lcom/google/googlenav/common/io/b/d;

    .line 16
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/i/a/a/d;->b:Lcom/google/googlenav/common/io/b/d;

    .line 18
    sget-object v0, Lcom/google/i/a/a/d;->a:Lcom/google/googlenav/common/io/b/d;

    .line 19
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, v2, v1, v4}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 26
    sget-object v0, Lcom/google/i/a/a/d;->b:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x21b

    sget-object v2, Lcom/google/i/a/a/d;->a:Lcom/google/googlenav/common/io/b/d;

    .line 27
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 31
    return-void
.end method

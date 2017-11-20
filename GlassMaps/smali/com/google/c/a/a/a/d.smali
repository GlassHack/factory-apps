.class public final Lcom/google/c/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 10
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/c/a/a/a/d;->a:Lcom/google/googlenav/common/io/b/d;

    .line 12
    sget-object v0, Lcom/google/c/a/a/a/d;->a:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x21e

    const/4 v2, 0x1

    const-wide/16 v3, 0x1111

    .line 15
    invoke-static {v3, v4}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 20
    return-void
.end method

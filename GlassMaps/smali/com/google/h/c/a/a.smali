.class public final Lcom/google/h/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x215

    .line 10
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/h/c/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    .line 12
    sget-object v0, Lcom/google/h/c/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    const/4 v1, 0x1

    .line 15
    invoke-static {v4, v5}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/4 v1, 0x2

    .line 18
    invoke-static {v4, v5}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 20
    return-void
.end method

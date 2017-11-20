.class public final Lcom/google/f/e/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/f/e/b/c;->a:Lcom/google/googlenav/common/io/b/d;

    .line 12
    sget-object v0, Lcom/google/f/e/b/c;->a:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x41b

    const/4 v2, 0x1

    sget-object v3, Lcom/google/f/e/b/g;->d:Lcom/google/googlenav/common/io/b/d;

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    .line 20
    return-void
.end method

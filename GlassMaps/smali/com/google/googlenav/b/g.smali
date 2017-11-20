.class public final Lcom/google/googlenav/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/b/g;->a:Ljava/lang/String;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/b/g;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a()Lcom/google/googlenav/common/io/b/a;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/e;->k:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    return-object v0
.end method

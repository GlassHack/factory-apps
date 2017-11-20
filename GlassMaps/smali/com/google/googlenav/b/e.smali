.class final Lcom/google/googlenav/b/e;
.super Lcom/google/googlenav/common/d/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/b/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/b/d;Lcom/google/googlenav/common/d/c;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/googlenav/b/e;->a:Lcom/google/googlenav/b/d;

    invoke-direct {p0, p2}, Lcom/google/googlenav/common/d/d;-><init>(Lcom/google/googlenav/common/d/c;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 561
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/google/googlenav/b/e;->a:Lcom/google/googlenav/b/d;

    invoke-static {v1}, Lcom/google/googlenav/b/d;->a(Lcom/google/googlenav/b/d;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/b/c;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V

    .line 563
    return-void
.end method

.class public final Landroid/support/v7/internal/view/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:Landroid/support/v4/view/co;

.field private c:J

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private final f:Landroid/support/v4/view/cp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/internal/view/h;->c:J

    .line 101
    new-instance v0, Landroid/support/v7/internal/view/i;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/i;-><init>(Landroid/support/v7/internal/view/h;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->f:Landroid/support/v4/view/cp;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/co;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Landroid/support/v7/internal/view/h;->b:Landroid/support/v4/view/co;

    .line 98
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 89
    iput-object p1, p0, Landroid/support/v7/internal/view/h;->d:Landroid/view/animation/Interpolator;

    .line 91
    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/cb;

    .line 58
    iget-wide v2, p0, Landroid/support/v7/internal/view/h;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 59
    iget-wide v2, p0, Landroid/support/v7/internal/view/h;->c:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    .line 61
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->d:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/cb;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/cb;

    .line 64
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->b:Landroid/support/v4/view/co;

    if-eqz v2, :cond_3

    .line 65
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->f:Landroid/support/v4/view/cp;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    .line 67
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/view/cb;->c()V

    goto :goto_1

    .line 70
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/cb;

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/view/cb;->b()V

    goto :goto_0
.end method

.method public final c()Landroid/support/v7/internal/view/h;
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 82
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/internal/view/h;->c:J

    .line 84
    :cond_0
    return-object p0
.end method

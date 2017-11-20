.class public final Landroid/support/v4/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Landroid/support/v4/widget/q;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Landroid/support/v4/widget/p;

    invoke-direct {v0}, Landroid/support/v4/widget/p;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/support/v4/widget/o;

    invoke-direct {v0}, Landroid/support/v4/widget/o;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/q;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/q;->a(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 154
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(F)Z
    .locals 2

    .prologue
    .line 177
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/q;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 204
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/q;->a(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;)Z
    .locals 2

    .prologue
    .line 218
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/q;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->b(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 189
    sget-object v0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

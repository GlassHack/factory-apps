.class final Landroid/support/v7/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/z;


# instance fields
.field final synthetic a:Landroid/support/v7/a/g;


# direct methods
.method private constructor <init>(Landroid/support/v7/a/g;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/a/g;B)V
    .locals 0

    .prologue
    .line 968
    invoke-direct {p0, p1}, Landroid/support/v7/a/j;-><init>(Landroid/support/v7/a/g;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/g;

    iget-boolean v1, v0, Landroid/support/v7/a/g;->n:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/a/g;->n:Z

    iget-object v1, v0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/v;->i()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/a/g;->n:Z

    .line 977
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;)Z
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x0

    return v0
.end method

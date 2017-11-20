.class public final Landroid/support/v7/internal/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/c/b;


# instance fields
.field final a:Landroid/view/ActionMode$Callback;

.field final b:Landroid/content/Context;

.field private c:Landroid/support/v7/internal/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Landroid/support/v7/internal/view/d;->b:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Landroid/support/v7/internal/view/d;->a:Landroid/view/ActionMode$Callback;

    .line 142
    return-void
.end method

.method private b(Landroid/support/v7/c/a;)Landroid/view/ActionMode;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/view/d;->c:Landroid/support/v7/internal/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/d;->c:Landroid/support/v7/internal/view/c;

    iget-object v0, v0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    if-ne v0, p1, :cond_0

    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/view/d;->c:Landroid/support/v7/internal/view/c;

    .line 177
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/view/d;->b:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/internal/view/c;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;Landroid/support/v7/c/a;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/a;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/view/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/d;->b(Landroid/support/v7/c/a;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 166
    return-void
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/view/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/d;->b(Landroid/support/v7/c/a;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, Landroid/support/v7/internal/view/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/d;->b(Landroid/support/v7/c/a;)Landroid/view/ActionMode;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    new-instance v0, Landroid/support/v7/internal/view/menu/u;

    invoke-direct {v0, p2}, Landroid/support/v7/internal/view/menu/u;-><init>(Landroid/view/MenuItem;)V

    move-object p2, v0

    :cond_0
    :goto_0
    invoke-interface {v1, v2, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    new-instance v0, Landroid/support/v7/internal/view/menu/p;

    invoke-direct {v0, p2}, Landroid/support/v7/internal/view/menu/p;-><init>(Landroid/view/MenuItem;)V

    move-object p2, v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/view/d;->a:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/d;->b(Landroid/support/v7/c/a;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

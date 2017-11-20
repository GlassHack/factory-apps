.class public abstract Landroid/support/v4/view/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/support/v4/view/o;

.field public c:Landroid/support/v4/view/p;


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public final a(Landroid/support/v4/view/p;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/n;->c:Landroid/support/v4/view/p;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 237
    const-string v0, "ActionProvider(support)"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/n;->c:Landroid/support/v4/view/p;

    .line 242
    return-void
.end method

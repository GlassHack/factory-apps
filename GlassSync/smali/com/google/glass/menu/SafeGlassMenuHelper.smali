.class public Lcom/google/glass/menu/SafeGlassMenuHelper;
.super Lcom/google/glass/menu/GlassMenuHelper;
.source "SafeGlassMenuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/glass/menu/GlassMenuHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public setDescription(Landroid/view/MenuItem;I)V
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "description"    # I

    .prologue
    .line 23
    instance-of v0, p1, Lcom/google/glass/menu/StubMenuItem;

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method public setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 15
    instance-of v0, p1, Lcom/google/glass/menu/StubMenuItem;

    if-eqz v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setInitialMenuItem(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 31
    instance-of v0, p2, Lcom/google/glass/menu/StubMenuItem;

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/menu/GlassMenuHelper;->setInitialMenuItem(Landroid/view/Menu;Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.class public Lcom/google/glass/menu/StubMenu;
.super Ljava/lang/Object;
.source "StubMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private final context:Landroid/content/Context;

.field private final menuItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/glass/menu/StubMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    .line 26
    iput-object p1, p0, Lcom/google/glass/menu/StubMenu;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/menu/StubMenu;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/menu/StubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/menu/StubMenu;->context:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/menu/StubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    new-instance v0, Lcom/google/glass/menu/StubMenuItem;

    iget-object v5, p0, Lcom/google/glass/menu/StubMenu;->context:Landroid/content/Context;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/menu/StubMenuItem;-><init>(IIILjava/lang/CharSequence;Landroid/content/Context;)V

    .line 37
    .local v0, "item":Lcom/google/glass/menu/StubMenuItem;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/menu/StubMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    iget-object v1, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/google/glass/menu/StubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "i3"    # I
    .param p8, "menuItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 90
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 3
    .param p1, "itemId"    # I

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/menu/StubMenuItem;

    .line 60
    .local v0, "item":Lcom/google/glass/menu/StubMenuItem;
    invoke-virtual {v0}, Lcom/google/glass/menu/StubMenuItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 64
    .end local v0    # "item":Lcom/google/glass/menu/StubMenuItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getMenuItems()[Lcom/google/glass/menu/StubMenuItem;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lcom/google/glass/menu/StubMenuItem;

    .line 31
    .local v0, "items":[Lcom/google/glass/menu/StubMenuItem;
    iget-object v1, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/menu/StubMenuItem;

    return-object v1
.end method

.method public hasVisibleItems()Z
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/menu/StubMenuItem;

    .line 75
    .local v0, "item":Lcom/google/glass/menu/StubMenuItem;
    invoke-virtual {v0}, Lcom/google/glass/menu/StubMenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 79
    .end local v0    # "item":Lcom/google/glass/menu/StubMenuItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "i"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "i1"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 126
    return-void
.end method

.method public removeItem(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 122
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "b"    # Z
    .param p3, "b1"    # Z

    .prologue
    .line 130
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "b"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "b"    # Z

    .prologue
    .line 134
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 161
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/menu/StubMenu;->menuItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

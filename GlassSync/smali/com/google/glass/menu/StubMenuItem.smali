.class public Lcom/google/glass/menu/StubMenuItem;
.super Ljava/lang/Object;
.source "StubMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private final context:Landroid/content/Context;

.field private final groupId:I

.field private iconId:I

.field private intent:Landroid/content/Intent;

.field private isEnable:Z

.field private isVisible:Z

.field private final itemId:I

.field private title:Ljava/lang/CharSequence;

.field private titleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IIILjava/lang/CharSequence;Landroid/content/Context;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lcom/google/glass/menu/StubMenuItem;->itemId:I

    .line 32
    iput p1, p0, Lcom/google/glass/menu/StubMenuItem;->groupId:I

    .line 33
    iput-object p4, p0, Lcom/google/glass/menu/StubMenuItem;->title:Ljava/lang/CharSequence;

    .line 34
    iput-object p5, p0, Lcom/google/glass/menu/StubMenuItem;->context:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/glass/menu/StubMenuItem;->groupId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/glass/menu/StubMenuItem;->iconId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/menu/StubMenuItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/glass/menu/StubMenuItem;->itemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/menu/StubMenuItem;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/menu/StubMenuItem;->titleCondensed:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/glass/menu/StubMenuItem;->isEnable:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/glass/menu/StubMenuItem;->isVisible:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 202
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 194
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 142
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 150
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 158
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/google/glass/menu/StubMenuItem;->isEnable:Z

    .line 99
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/google/glass/menu/StubMenuItem;->iconId:I

    .line 93
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 113
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/glass/menu/StubMenuItem;->intent:Landroid/content/Intent;

    .line 122
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 134
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 223
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "onMenuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 175
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .param p1, "c"    # C
    .param p2, "c1"    # C

    .prologue
    .line 130
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 183
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 186
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/menu/StubMenuItem;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/menu/StubMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 65
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/menu/StubMenuItem;->title:Ljava/lang/CharSequence;

    .line 60
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "titleCondensed"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/menu/StubMenuItem;->titleCondensed:Ljava/lang/CharSequence;

    .line 71
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/glass/menu/StubMenuItem;->isVisible:Z

    .line 82
    return-object p0
.end method

.class public Lcom/google/glass/widget/MenuItemDescriptor;
.super Ljava/lang/Object;
.source "MenuItemDescriptor.java"


# instance fields
.field private command:Lcom/google/android/glass/app/ContextualMenus$Command;

.field private description:Ljava/lang/String;

.field private enabled:Z

.field private extra:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconRid:I

.field private id:I

.field private title:Ljava/lang/String;

.field private titleRid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Lcom/google/android/glass/app/ContextualMenus$Command;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->command:Lcom/google/android/glass/app/ContextualMenus$Command;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->enabled:Z

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconRid()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->iconRid:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRid()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->titleRid:I

    return v0
.end method

.method public setCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "command"    # Lcom/google/android/glass/app/ContextualMenus$Command;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->command:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 96
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->description:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setEnabled(Z)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->enabled:Z

    .line 83
    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->extra:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->icon:Landroid/graphics/drawable/Drawable;

    .line 78
    return-object p0
.end method

.method public setIconRid(I)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "iconRid"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->iconRid:I

    .line 24
    return-object p0
.end method

.method public setId(I)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->id:I

    .line 51
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->title:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setTitleRid(I)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0
    .param p1, "titleRid"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->titleRid:I

    .line 42
    return-object p0
.end method

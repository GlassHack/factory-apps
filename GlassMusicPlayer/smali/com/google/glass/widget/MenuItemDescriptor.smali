.class public Lcom/google/glass/widget/MenuItemDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Lcom/google/android/glass/app/ContextualMenus$Command;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->command:Lcom/google/android/glass/app/ContextualMenus$Command;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->enabled:Z

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconRid()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->iconRid:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRid()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/widget/MenuItemDescriptor;->titleRid:I

    return v0
.end method

.method public setCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->command:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 97
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->description:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setEnabled(Z)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->enabled:Z

    .line 84
    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->extra:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->icon:Landroid/graphics/drawable/Drawable;

    .line 79
    return-object p0
.end method

.method public setIconRid(I)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->iconRid:I

    .line 25
    return-object p0
.end method

.method public setId(I)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->id:I

    .line 52
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->title:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setTitleRid(I)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/google/glass/widget/MenuItemDescriptor;->titleRid:I

    .line 43
    return-object p0
.end method

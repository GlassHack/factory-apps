.class public Lcom/google/glass/menu/MenuItemUtils;
.super Ljava/lang/Object;
.source "MenuItemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setGray(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .param p0, "span"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 26
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 28
    return-object p0
.end method

.method public static setStyleMenuItemForError(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "menuItem"    # Landroid/view/MenuItem;
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 17
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/google/glass/menu/MenuItemUtils;->setGray(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 18
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    :cond_0
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {v1}, Lcom/google/glass/menu/MenuItemUtils;->setGray(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method

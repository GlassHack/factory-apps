.class public Lcom/google/glass/settings/ui/LanguageSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "LanguageSettingsItemView.java"


# static fields
.field private static final PSEUDO_LOCALE_ACCENT:Ljava/util/Locale;

.field public static final SUPPORTED_LOCALES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentLocale:Ljava/util/Locale;

.field private final mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "xa"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->PSEUDO_LOCALE_ACCENT:Ljava/util/Locale;

    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    sget-object v3, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->PSEUDO_LOCALE_ACCENT:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->SUPPORTED_LOCALES:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/LanguageSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/LanguageSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$layout;->language_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->currentLocale:Ljava/util/Locale;

    .line 50
    sget v0, Lcom/google/glass/settings/ui/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->mText:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    sget-object v1, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->SUPPORTED_LOCALES:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 68
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iput-object v0, p0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->currentLocale:Ljava/util/Locale;

    .line 70
    iget-object v2, p0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenActivityManagerNative;->setLocale(Ljava/util/Locale;)Z

    goto :goto_0

    .line 75
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 3
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    .line 56
    if-eqz p3, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    .line 59
    :cond_0
    sget-object v1, Lcom/google/glass/settings/ui/LanguageSettingsItemView;->SUPPORTED_LOCALES:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 60
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 62
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

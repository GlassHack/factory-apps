.class public Lcom/google/glass/setup/LocaleSelectionAdapter;
.super Lcom/google/glass/setup/ArrayListCardScrollAdapter;
.source "LocaleSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/setup/ArrayListCardScrollAdapter",
        "<",
        "Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;",
        ">;"
    }
.end annotation


# static fields
.field static final AVAILABLE_LOCALES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCALE_JAPANESE:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LOCALE_UK:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LOCALE_US:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final REGION_TO_LOCALES_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget v2, Lcom/google/glass/setup/R$drawable;->background_us:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;-><init>(Ljava/util/Locale;I)V

    sput-object v0, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_US:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 32
    new-instance v0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sget v2, Lcom/google/glass/setup/R$drawable;->background_uk:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;-><init>(Ljava/util/Locale;I)V

    sput-object v0, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_UK:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 35
    new-instance v0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    sget v2, Lcom/google/glass/setup/R$drawable;->background_jp:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;-><init>(Ljava/util/Locale;I)V

    sput-object v0, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_JAPANESE:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    sget-object v1, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_US:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_UK:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    aput-object v1, v0, v5

    .line 41
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/LocaleSelectionAdapter;->AVAILABLE_LOCALES:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string v1, "US"

    new-array v2, v5, [Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    sget-object v3, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_US:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    aput-object v3, v2, v4

    .line 49
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "GB"

    new-array v2, v5, [Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    sget-object v3, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_UK:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    aput-object v3, v2, v4

    .line 50
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "JP"

    new-array v2, v5, [Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    sget-object v3, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_JAPANESE:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    aput-object v3, v2, v4

    .line 51
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/LocaleSelectionAdapter;->REGION_TO_LOCALES_MAP:Lcom/google/common/collect/ImmutableMap;

    .line 54
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/LocaleSelectionAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;-><init>(Landroid/content/Context;Z)V

    .line 59
    iget-object v0, p0, Lcom/google/glass/setup/LocaleSelectionAdapter;->itemList:Ljava/util/List;

    invoke-static {}, Lcom/google/glass/locale/RegionProvider;->getInstance()Lcom/google/glass/locale/RegionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/RegionProvider;->get()Lcom/google/glass/locale/Region;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/setup/LocaleSelectionAdapter;->calculateLocaleList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    return-void
.end method


# virtual methods
.method calculateLocaleList(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "regionCode"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 66
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;>;"
    sget-object v7, Lcom/google/glass/setup/LocaleSelectionAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Device has region code set to "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v7, v6, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 69
    :cond_0
    const-string p1, "US"

    .line 71
    :cond_1
    sget-object v6, Lcom/google/glass/setup/LocaleSelectionAdapter;->REGION_TO_LOCALES_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v6, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    .local v0, "countryLocales":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;>;"
    if-nez v0, :cond_2

    .line 74
    sget-object v7, Lcom/google/glass/setup/LocaleSelectionAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Unknown region code from bootconfig "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v7, v6, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v6, Lcom/google/glass/setup/LocaleSelectionAdapter;->REGION_TO_LOCALES_MAP:Lcom/google/common/collect/ImmutableMap;

    const-string v7, "US"

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "countryLocales":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;>;"
    check-cast v0, Ljava/util/List;

    .line 80
    .restart local v0    # "countryLocales":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;>;"
    :cond_2
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    sget-object v6, Lcom/google/glass/setup/LocaleSelectionAdapter;->AVAILABLE_LOCALES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 83
    .local v3, "item":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 84
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    .end local v0    # "countryLocales":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;>;"
    .end local v3    # "item":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .restart local v0    # "countryLocales":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;>;"
    :cond_5
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_6
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->JA:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "JP"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 90
    sget-object v6, Lcom/google/glass/setup/LocaleSelectionAdapter;->LOCALE_JAPANESE:Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 94
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 95
    .restart local v3    # "item":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    iget-object v6, v3, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 98
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 99
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    iget-object v4, v6, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    .line 100
    .local v4, "locale":Ljava/util/Locale;
    iget-object v6, v3, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    iget-object v7, p0, Lcom/google/glass/setup/LocaleSelectionAdapter;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/setup/R$string;->swipe_to_view_language:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 101
    invoke-virtual {v4, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 100
    invoke-static {v7, v8, v4, v9}, Lcom/google/glass/locale/LocaleHelper;->getStringInLocale(Landroid/content/Context;ILjava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 104
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_8
    const/4 v2, 0x1

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 105
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 106
    .local v1, "currentItem":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    iget-object v6, v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 109
    iget-object v7, v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    iget-object v6, v6, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v6, v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    iget-object v7, p0, Lcom/google/glass/setup/LocaleSelectionAdapter;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/setup/R$string;->swipe_to_view_language:I

    iget-object v9, v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    iget-object v13, v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    .line 112
    invoke-virtual {v12, v13}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 110
    invoke-static {v7, v8, v9, v10}, Lcom/google/glass/locale/LocaleHelper;->getStringInLocale(Landroid/content/Context;ILjava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 115
    .end local v1    # "currentItem":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    :cond_9
    return-object v5
.end method

.method public fillView(ILandroid/view/View;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/google/glass/setup/LocaleSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .line 121
    .local v3, "localeItem":Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
    iget-object v2, v3, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    .line 122
    .local v2, "locale":Ljava/util/Locale;
    sget v6, Lcom/google/glass/setup/R$id;->localeIcon:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->access$000(Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    sget v6, Lcom/google/glass/setup/R$id;->localeName:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 125
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget v6, Lcom/google/glass/setup/R$id;->instruction:I

    .line 127
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 128
    .local v1, "instruction":Lcom/google/glass/widget/SmoothRotatingTextView;
    iget-object v6, p0, Lcom/google/glass/setup/LocaleSelectionAdapter;->context:Landroid/content/Context;

    sget v7, Lcom/google/glass/setup/R$string;->tap_to_select_locale:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v2, v8}, Lcom/google/glass/locale/LocaleHelper;->getStringInLocale(Landroid/content/Context;ILjava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/setup/R$style;->SmallOverlayText:I

    invoke-virtual {v1, v6, v7}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;I)V

    .line 130
    new-instance v6, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;

    invoke-direct {v6, v1}, Lcom/google/glass/widget/SmoothRotatingTextView$FadeInFadeOutAnimation;-><init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    invoke-virtual {v1, v6}, Lcom/google/glass/widget/SmoothRotatingTextView;->setTextRotationAnimation(Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;)V

    .line 131
    iget-object v6, v3, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "string":Ljava/lang/String;
    sget v7, Lcom/google/glass/setup/R$style;->SmallOverlayText:I

    invoke-virtual {v1, v4, v7}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 134
    .end local v4    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    .line 135
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/google/glass/setup/R$layout;->choose_locale_view_item:I

    return v0
.end method

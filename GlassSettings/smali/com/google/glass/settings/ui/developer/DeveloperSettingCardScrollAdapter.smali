.class public Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "DeveloperSettingCardScrollAdapter.java"


# instance fields
.field private final developerSettingCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "developerSettingsCards":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;->developerSettingCards:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;->developerSettingCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;->developerSettingCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;->getItem(I)Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;->getItem(I)Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->getCard()Lcom/google/android/glass/widget/CardBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardBuilder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;->developerSettingCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCardScrollAdapter;->getItem(I)Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;

    move-result-object v1

    .line 49
    .local v1, "developerSettingCard":Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
    invoke-virtual {v1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->update()V

    .line 50
    invoke-virtual {v1}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->getCard()Lcom/google/android/glass/widget/CardBuilder;

    move-result-object v0

    .line 52
    .local v0, "card":Lcom/google/android/glass/widget/CardBuilder;
    invoke-virtual {v0, p2, p3}, Lcom/google/android/glass/widget/CardBuilder;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/android/glass/widget/CardBuilder;->getViewTypeCount()I

    move-result v0

    return v0
.end method

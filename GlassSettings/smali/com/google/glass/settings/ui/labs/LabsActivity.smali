.class public final Lcom/google/glass/settings/ui/labs/LabsActivity;
.super Landroid/app/Activity;
.source "LabsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final LAB_CARD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/glass/settings/ui/labs/LabCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

.field private labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/google/glass/settings/ui/labs/LabsActivity$1;

    invoke-direct {v0}, Lcom/google/glass/settings/ui/labs/LabsActivity$1;-><init>()V

    sput-object v0, Lcom/google/glass/settings/ui/labs/LabsActivity;->LAB_CARD_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    new-instance v0, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/labs/LabsActivity$OnItemClickListener;-><init>(Lcom/google/glass/settings/ui/labs/LabsActivity;Lcom/google/glass/settings/ui/labs/LabsActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/labs/LabsActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/labs/LabsActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/settings/ui/labs/LabsActivity;Lcom/google/glass/settings/ui/labs/LabCard;)Lcom/google/glass/settings/ui/labs/LabCard;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/labs/LabsActivity;
    .param p1, "x1"    # Lcom/google/glass/settings/ui/labs/LabCard;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    return-object p1
.end method

.method private getLabCards()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/settings/ui/labs/LabCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v2, Lcom/google/glass/settings/ui/labs/LabsActivity;->LAB_CARD_COMPARATOR:Ljava/util/Comparator;

    .line 120
    invoke-static {v2}, Lcom/google/common/collect/ImmutableSortedSet;->orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    .line 122
    .local v0, "builder":Lcom/google/common/collect/ImmutableSortedSet$Builder;, "Lcom/google/common/collect/ImmutableSortedSet$Builder<Lcom/google/glass/settings/ui/labs/LabCard;>;"
    invoke-static {}, Lcom/google/glass/util/Labs$Feature;->values()[Lcom/google/glass/util/Labs$Feature;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 123
    .local v1, "feature":Lcom/google/glass/util/Labs$Feature;
    new-instance v5, Lcom/google/glass/settings/ui/labs/LabFeatureCard;

    invoke-direct {v5, v1}, Lcom/google/glass/settings/ui/labs/LabFeatureCard;-><init>(Lcom/google/glass/util/Labs$Feature;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "feature":Lcom/google/glass/util/Labs$Feature;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate() [savedInstanceState=%s]."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/google/android/glass/widget/CardScrollView;

    invoke-direct {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 38
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v4}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;

    .line 40
    invoke-direct {p0}, Lcom/google/glass/settings/ui/labs/LabsActivity;->getLabCards()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/labs/LabsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/settings/ui/labs/LabsCardScrollAdapter;-><init>(Lcom/google/common/collect/ImmutableList;Landroid/view/LayoutInflater;Lcom/google/glass/logging/FormattingLogger;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/labs/LabsActivity;->setContentView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onCreateOptionsMenu() [menu=%s, clickedCard=%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    iget-object v5, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/labs/LabsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v2, Lcom/google/glass/settings/ui/R$menu;->device_info_labs_menu:I

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onOptionsItemSelected() [item=%s, clickedCard=%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 91
    .local v0, "itemId":I
    sget v2, Lcom/google/glass/settings/ui/R$id;->deviceinfo_lab_menu_enable:I

    if-ne v0, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Enabling lab from menu [clickedCard=%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    invoke-interface {v2, v1}, Lcom/google/glass/settings/ui/labs/LabCard;->setEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 105
    :goto_0
    return v1

    .line 98
    :cond_0
    sget v2, Lcom/google/glass/settings/ui/R$id;->deviceinfo_lab_menu_disable:I

    if-ne v0, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Disabling lab from menu [clickedCard=%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    invoke-interface {v2, v6}, Lcom/google/glass/settings/ui/labs/LabCard;->setEnabled(Z)V

    .line 101
    iget-object v2, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/labs/LabsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/labs/LabsActivity;->finish()V

    .line 58
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v3, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "onPrepareOptionsMenu() [menu=%s, clickedCard=%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    iget-object v6, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v3, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    if-nez v3, :cond_0

    .line 83
    :goto_0
    return v1

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->clickedCard:Lcom/google/glass/settings/ui/labs/LabCard;

    invoke-interface {v3}, Lcom/google/glass/settings/ui/labs/LabCard;->isEnabled()Z

    move-result v0

    .line 81
    .local v0, "isEnabled":Z
    sget v3, Lcom/google/glass/settings/ui/R$id;->deviceinfo_lab_menu_enable:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 82
    sget v1, Lcom/google/glass/settings/ui/R$id;->deviceinfo_lab_menu_disable:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/labs/LabsActivity;->labsCardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 49
    return-void
.end method

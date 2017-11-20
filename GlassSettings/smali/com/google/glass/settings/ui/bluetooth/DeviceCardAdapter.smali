.class Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "DeviceCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->list:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->context:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->list:Ljava/util/List;

    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->ANDROID:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->list:Ljava/util/List;

    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->IPHONE:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->getItem(I)Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->list:Ljava/util/List;

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
    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/settings/ui/R$layout;->choose_phone_view_item:I

    invoke-static {v1, v2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->getItem(I)Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    move-result-object v0

    .line 60
    .local v0, "item":Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;
    sget v1, Lcom/google/glass/settings/ui/R$id;->phoneName:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->resourcePhoneName:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    sget v1, Lcom/google/glass/settings/ui/R$id;->instruction:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->resourceInstruction:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 62
    sget v1, Lcom/google/glass/settings/ui/R$id;->phoneIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->resourcePhoneIcon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    return-object p2
.end method
